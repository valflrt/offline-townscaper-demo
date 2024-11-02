#!/bin/bash

# Start the HTTP server in the background
python3 -m http.server 8034 &
SERVER_PID=$!

# Start Brave in app mode and get its process ID
/usr/bin/brave-browser-stable --app=http://0.0.0.0:8034/Townscaper.html &
BRAVE_PID=$!

# Wait for Brave to close
wait $BRAVE_PID

# Once Brave is closed, kill the server
#kill $SERVER_PID

#!/usr/bin/with-contenv bash

### test  #!/bin/sh
echo "##---- env output ----"
env
echo "##---- s6-dumpenv -- /tmp/container_environment ---"
s6-dumpenv -- /tmp/container_environment
echo '##---- node /ntest1.js ----'
node /ntest1.js
echo '---- tail -n +1 -- /tmp/container_environment/* ----'
tail -n +1 -- /tmp/container_environment/*

#!/usr/bin/zsh

# This zsh script performs `git pull` for all packages inside the current directory.

for dir in */; do
  if [ -d "$dir/.git" ]; then
    echo "Pulling updates for $dir"
    (cd "$dir" && git pull)
    echo
  fi
done

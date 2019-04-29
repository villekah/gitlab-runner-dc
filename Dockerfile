FROM gitlab/gitlab-runner:latest

RUN \
apt-get update && \
apt-get -y install \
  docker.io && \
rm -rf /var/lib/apt/lists/*

RUN \
curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && \
chmod +x /usr/local/bin/docker-compose
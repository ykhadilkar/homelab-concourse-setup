bosh alias-env bosh-concourse -e 10.0.0.211 --ca-cert <(bosh int generated/bosh/creds.yml --path /director_ssl/ca)

export BOSH_CLIENT=admin
export BOSH_CLIENT_SECRET=`bosh int generated/bosh/creds.yml --path /admin_password`
export BOSH_ENVIRONMENT=bosh-concourse
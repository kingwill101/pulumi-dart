# DigitalOcean Load-Balanced Droplets (Dart)

This Dart example ports `thirdparty/pulumi_examples/digitalocean-ts-loadbalanced-droplets/`.

## Prerequisites

- Pulumi CLI installed
- DigitalOcean personal access token

## Configure

```bash
pulumi config set --secret digitalocean:token <YOUR_DIGITALOCEAN_TOKEN>
```

## Deploy

```bash
pulumi up
```

## Output

- `endpoint`: public load balancer IP

## Destroy

```bash
pulumi destroy --yes
```

# DigitalOcean Kubernetes + App (Dart)

This Dart example ports `thirdparty/pulumi_examples/digitalocean-ts-k8s/`.

## Prerequisites

- Pulumi CLI installed
- DigitalOcean personal access token
- `kubectl` (optional, for cluster access)

## Configure

```bash
pulumi config set --secret digitalocean:token <YOUR_DIGITALOCEAN_TOKEN>
```

Optional:

```bash
pulumi config set nodeCount 3
pulumi config set appReplicaCount 7
pulumi config set domainName <YOUR_DOMAIN_NAME>
```

## Deploy

```bash
pulumi up
```

## Outputs

- `ingressIp`: load balancer IP for the nginx service
- `kubeconfig`: kubeconfig content for the created cluster

## Destroy

```bash
pulumi destroy --yes
```

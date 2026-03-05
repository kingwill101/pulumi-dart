# Deploy Containerized Web Applications to AKS (Azure Native)

This Dart port deploys:

- An AKS cluster
- A Kubernetes Deployment and Service (`LoadBalancer`) for a web app container

It exports:

- `endpoint`
- `kubeconfig`

## Prerequisites

- Pulumi CLI installed
- Azure credentials configured

## Optional config

- `dockerImage` default `strm/helloworld-http`
- `vmCount` default `3`
- `vmSize` default `Standard_DS2_v2`
- `kubernetesVersion` default `1.34.0`

## Deploy

```bash
pulumi stack init dev
pulumi config set azure-native:location westus2
pulumi up
```

## Access

```bash
pulumi stack output endpoint
pulumi stack output kubeconfig --show-secrets > kubeconfig.yaml
```

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```

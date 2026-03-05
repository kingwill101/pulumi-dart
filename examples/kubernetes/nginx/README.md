# Kubernetes Stateless Nginx (Dart)

This Dart example ports `thirdparty/pulumi_examples/kubernetes-ts-nginx/`.

It deploys an Nginx `Deployment` with configurable replica count.

## Prerequisites

- Pulumi CLI installed
- Kubernetes cluster configured for Pulumi

## Configure

Optionally configure replica count:

```bash
pulumi config set replicas 2
```

## Deploy

```bash
pulumi up
```

## Outputs

- `nginx` (deployment metadata name)

## Destroy

```bash
pulumi destroy --yes
```

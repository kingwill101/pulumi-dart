# Exposing a Deployment with a Public IP Address (Dart)

This Dart example ports `thirdparty/pulumi_examples/kubernetes-ts-exposed-deployment/`.

## Prerequisites

- Pulumi CLI installed
- Kubernetes cluster configured for Pulumi

## Configure

Set whether your cluster is minikube:

```bash
pulumi config set isMinikube true
```

For non-minikube clusters:

```bash
pulumi config set isMinikube false
```

## Deploy

```bash
pulumi up
```

## Output

- `frontendIp`

## Destroy

```bash
pulumi destroy --yes
```

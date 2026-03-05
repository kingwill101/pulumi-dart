# Kubernetes Guestbook (Dart)

This Dart example ports `thirdparty/pulumi_examples/kubernetes-ts-guestbook/simple/`.

It deploys:

- `redis-leader` deployment + service
- `redis-replica` deployment + service
- `frontend` deployment + service

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

## Outputs

- `frontendIp`

For minikube, use:

```bash
kubectl port-forward svc/frontend 8080:80
```

Then open `http://localhost:8080`.

## Destroy

```bash
pulumi destroy --yes
```

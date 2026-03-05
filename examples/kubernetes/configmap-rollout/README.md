# Kubernetes ConfigMap Rollout (Dart)

This Dart example ports `thirdparty/pulumi_examples/kubernetes-ts-configmap-rollout/`.

It deploys:

- Nginx `ConfigMap` from local `default.conf`
- Nginx `Deployment` mounting the ConfigMap
- Nginx `Service` exposed as `LoadBalancer` or `ClusterIP` for minikube

Changing `default.conf` updates the ConfigMap and rolls out the Deployment.

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
kubectl port-forward svc/nginx 8080:80
```

Then open `http://localhost:8080`.

## Destroy

```bash
pulumi destroy --yes
```

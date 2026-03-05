# Kubernetes Sock Shop (Dart)

This Dart example ports `thirdparty/pulumi_examples/kubernetes-ts-sock-shop/`.

It deploys the Sock Shop microservices demo to Kubernetes from the upstream manifest.

## Prerequisites

- Pulumi CLI installed
- Kubernetes cluster configured for Pulumi

## Configure

This example requires a cluster that supports `LoadBalancer` services:

```bash
pulumi config set isMinikube false
```

## Deploy

```bash
pulumi up
```

## Outputs

- `manifestUrl`
- `namespace`
- `frontendService`
- `portForwardCommand`

## Notes

- This Dart port uses `kubernetes.yaml.v2.ConfigFile` with the upstream Sock Shop manifest URL.
- Upstream TS example models all resources inline in code; this Dart port keeps behavior but uses manifest ingestion for maintainability.

## Access

After deployment:

```bash
kubectl -n sock-shop port-forward svc/front-end 8080:80
```

Then open `http://localhost:8080`.

## Destroy

```bash
pulumi destroy --yes
```

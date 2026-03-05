# Kubernetes S3 Rollout (Dart)

This Dart example ports `thirdparty/pulumi_examples/kubernetes-ts-s3-rollout/`.

It deploys:

- S3 bucket + object containing `default.conf`
- Nginx `Deployment` with an init container that downloads `default.conf` from S3
- Nginx `Service`

## Prerequisites

- Pulumi CLI installed
- AWS credentials configured
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

- `nginxConfigUrl`
- `frontendIp`

If `isMinikube` is true, use:

```bash
kubectl port-forward svc/nginx 8080:80
```

Then open `http://localhost:8080`.

## Rollout behavior

- This example computes an MD5 digest of local `default.conf`.
- The digest is included in the deployment volume name.
- Changing `default.conf` changes the pod template and triggers a rollout.

## Destroy

```bash
pulumi destroy --yes
```

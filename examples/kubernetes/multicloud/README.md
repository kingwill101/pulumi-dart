# Kubernetes Multicloud (Dart)

This Dart example ports `thirdparty/pulumi_examples/kubernetes-ts-multicloud/`.

It deploys the same demo app to multiple Kubernetes clusters using separate Kubernetes providers.

## Prerequisites

- Pulumi CLI installed
- Kubernetes access configured
- Kubeconfigs for any managed clusters you want to target

## Configure

Optional image tag:

```bash
pulumi config set imageTag blue
```

Optional cluster kubeconfigs:

```bash
pulumi config set aksKubeconfig "$(cat /path/to/aks.kubeconfig)"
pulumi config set eksKubeconfig "$(cat /path/to/eks.kubeconfig)"
pulumi config set gkeKubeconfig "$(cat /path/to/gke.kubeconfig)"
```

Optional AKS static service IP:

```bash
pulumi config set aksStaticAppIp 20.1.2.3
```

Behavior:

- `local` provider is always created from ambient kubeconfig context.
- `aks`, `eks`, and `gke` providers are created only when their kubeconfig config values are set.

## Deploy

```bash
pulumi up
```

## Outputs

- `appUrls` map keyed by cluster name

## Notes

- This Dart port focuses on multi-provider app deployment.
- Upstream cluster provisioning for AKS/EKS/GKE is not included in this port.

## Destroy

```bash
pulumi destroy --yes
```

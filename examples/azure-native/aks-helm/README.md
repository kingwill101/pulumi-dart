# Azure Kubernetes Service (AKS) Cluster and Helm Chart

This example deploys:

- An AKS cluster (Azure Native)
- A Kubernetes provider configured from AKS kubeconfig
- The Bitnami `apache` Helm chart using Pulumi Kubernetes

## Prerequisites

- Pulumi CLI installed
- Azure credentials configured

## Config (optional)

- `k8sVersion` default `1.26.3`
- `nodeCount` default `2`
- `nodeSize` default `Standard_D2_v2`
- `adminUserName` default `testuser`
- `sshPublicKey` default generated TLS key pair

## Deploy

```bash
pulumi stack init dev
pulumi config set azure-native:location westus2
pulumi up
```

## Useful outputs

```bash
pulumi stack output clusterName
pulumi stack output kubeconfig --show-secrets > kubeconfig.yaml
KUBECONFIG=./kubeconfig.yaml kubectl get svc
```

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```

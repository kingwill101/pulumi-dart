# Azure Kubernetes Service (AKS) Cluster (Dart)

This Dart example ports:

- `thirdparty/pulumi_examples/azure-cs-aks/`

It provisions:

- Resource Group
- Azure AD application + service principal + password
- AKS managed cluster
- Generated SSH key for Linux profile

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)

## Configure

```bash
pulumi config set azure-native:location westus2
```

## Deploy

```bash
pulumi up
```

## Outputs

- `kubeconfig`
- `generatedPassword`

Write kubeconfig and use kubectl:

```bash
pulumi stack output kubeconfig --show-secrets > kubeconfig.yaml
KUBECONFIG=./kubeconfig.yaml kubectl get nodes
```

## Destroy

```bash
pulumi destroy --yes
```

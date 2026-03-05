# Azure Kubernetes Service (AKS) with User Assigned Managed Identity

This example deploys:

- An Azure Resource Group
- A user-assigned managed identity
- An AKS cluster configured to use that managed identity
- A role assignment granting the identity `Contributor` on the resource group

The stack exports `kubeconfig`.

## Prerequisites

- Pulumi CLI installed
- Azure credentials configured

## Deploy

```bash
pulumi stack init dev
pulumi config set azure-native:location westus2
pulumi up
```

## Use kubeconfig

```bash
pulumi stack output kubeconfig --show-secrets > kubeconfig.yaml
KUBECONFIG=./kubeconfig.yaml kubectl get nodes
```

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```

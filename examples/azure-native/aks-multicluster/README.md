# Multiple Azure Kubernetes Service (AKS) Clusters

This example deploys two AKS clusters in different Azure regions with different node counts.

## Prerequisites

- Pulumi CLI installed
- Azure CLI installed and authenticated (`az login`) or Azure credentials configured via environment variables

## Required config

- `sshPublicKey`: SSH public key used for AKS Linux profile

Optional config:

- `location` default `eastus` for the resource group

## Deploy

```bash
pulumi stack init dev
pulumi config set azure-native:environment public
pulumi config set sshPublicKey "$(cat ~/.ssh/id_rsa.pub)"
pulumi up
```

## Outputs

- `aksClusterNames`: names of created AKS clusters

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```

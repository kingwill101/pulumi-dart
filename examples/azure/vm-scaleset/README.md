# Azure VM Scale Set (Dart)

This Dart example ports `thirdparty/pulumi_examples/classic-azure-ts-vm-scaleset/`.

It deploys:

- Resource group
- Public IP + load balancer + backend pool + probe + rule
- Virtual network + subnet
- Linux virtual machine scale set
- Autoscale setting (scale out/in on CPU)

## Prerequisites

- Pulumi CLI installed
- Azure credentials configured for the classic Azure provider:
- `az login`, or
- `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_TENANT_ID`, `ARM_SUBSCRIPTION_ID` environment variables

## Configure

```bash
pulumi config set azure:location <location>
pulumi config set azure:subscriptionId <YOUR_SUBSCRIPTION_ID>
pulumi config set adminUser azureuser
pulumi config set adminPassword <your-password> --secret
pulumi config set applicationPort 80
```

`adminPassword` and `domain` are optional. If omitted, this example generates
them with `pulumi_random`.

## Deploy

```bash
pulumi up
```

## Outputs

- `publicAddress`

## Test

```bash
curl http://$(pulumi stack output publicAddress)
```

## Destroy

```bash
pulumi destroy --yes
```

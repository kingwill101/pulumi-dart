# Load Balancer and Web Server Using Azure Load Balancer and Virtual Machine (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-py-loadbalancer-vm/`.

It deploys:

- an Azure Load Balancer
- a Linux VM running a simple HTTP server
- a public IP and DNS label for LB access

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)

## Configure

```bash
pulumi config set azure-native:location westus
pulumi config set username webmaster
pulumi config set password --secret <your-password>
```

## Deploy

```bash
pulumi up
```

## Outputs

- `lb-ip`
- `fqdn`

## Destroy

```bash
pulumi destroy --yes
```

# Web Server Component Using Azure Virtual Machines (Dart)

This Dart example ports `thirdparty/pulumi_examples/classic-azure-ts-webserver-component/`.

It provisions a configurable number of Linux web servers in Azure and exports
their public IP addresses. The VM/NIC/Public IP composition is encapsulated in
a reusable `WebServer` component under `lib/webserver.dart`.

## Prerequisites

- Pulumi CLI installed
- Azure credentials configured for the classic Azure provider:
- `az login`, or
- `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_TENANT_ID`, `ARM_SUBSCRIPTION_ID` environment variables

## Configure

```bash
pulumi config set azure:location westus
pulumi config set azure:subscriptionId <YOUR_SUBSCRIPTION_ID>
pulumi config set username webmaster
pulumi config set password <YOUR_PASSWORD> --secret
pulumi config set count 2
```

## Deploy

```bash
pulumi up
```

## Outputs

- `ipAddresses`

## Destroy

```bash
pulumi destroy --yes
```

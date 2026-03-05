# Azure Virtual Data Center (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-py-virtual-data-center/`.

It deploys a hub-and-spoke Azure network topology using Azure Native resources,
including:

- hub virtual network with firewall, DMZ, and gateway subnets
- Azure Firewall with management interface
- VPN and ExpressRoute gateways
- two spoke virtual networks with peering to the hub
- optional Azure Bastion hosts
- optional cross-stack peering via `StackReference`

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)

## Configure

Example required config:

```bash
pulumi config set location australiaeast
pulumi config set firewall_address_space 192.168.100.0/24
pulumi config set hub_address_space 10.100.0.0/16
```

Optional:

```bash
pulumi config set azure_bastion true
pulumi config set forced_tunnel 10.0.100.1
pulumi config set separator -
pulumi config set suffix ae
pulumi config set peer dr
pulumi config set org myorg
pulumi config set project azure-native-dart-virtual-data-center
```

## Deploy

```bash
pulumi up
```

## Outputs

- `dmz_ar`
- `fw_ip`
- `hub_as`
- `hub_id`
- `s01_as`
- `s01_id`
- `s02_as`
- `s02_id`

## Destroy

```bash
pulumi destroy --yes
```

# Libvirt VM on an Azure-hosted KVM Server (Dart)

This Dart example ports `thirdparty/pulumi_examples/libvirt-py-vm/`.

## What it does

- Provisions an Azure VM configured as a KVM/libvirt host.
- Creates a `libvirt` provider instance using a remote SSH URI.
- Creates a libvirt storage pool and Linux volume on that host.
- Creates a libvirt domain (VM) attached to the volume and default network.

## Prerequisites

- Pulumi CLI installed
- Azure credentials configured (for example `az login`)
- Local `libvirt` tooling installed (provider dependency)

## Configure

Optional basename:

```bash
pulumi config set basename libvirt-ex
```

Set Azure location:

```bash
pulumi config set azure-native:location westus
```

## Deploy

```bash
pulumi up
```

## Outputs

- `libvirtPoolName`
- `libvirtVolumeName`
- `libvirtVmName`
- `checkLibvirtVmOnHost`

## Verify

Run the emitted command:

```bash
pulumi stack output checkLibvirtVmOnHost
```

## Destroy

```bash
pulumi destroy --yes
```

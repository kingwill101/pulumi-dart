# Minecraft Server Using an Azure Virtual Machine (Dart)

This Dart example ports:

- `thirdparty/pulumi_examples/azure-py-minecraft-server/`

It provisions:

- Resource Group
- Virtual Network + Subnet
- Public IP + Network Interface
- Linux VM (Ubuntu)
- Remote provisioning via `pulumi_command`:
- copy `install.sh`
- execute install script over SSH

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)
- SSH keypair generated

## Required config

- `publicKey`: contents of your public key file (`rsa.pub`)
- `privateKey` (secret): contents of your private key file (`rsa`) or base64-encoded private key
- `admin_username`: VM admin username
- `admin_password` (secret): VM admin password
- `location` (optional): Azure region, default `westus`

Example:

```bash
cat rsa.pub | pulumi config set publicKey --
cat rsa | pulumi config set privateKey --secret --
pulumi config set admin_username <admin username>
pulumi config set admin_password --secret <admin password>
pulumi config set location westus
```

## Deploy

```bash
pulumi up
```

## Output

- `minecraftServerIpAddress`

## Destroy

```bash
pulumi destroy --yes
```

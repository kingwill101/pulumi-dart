# Azure VM Provisioners (Dart)

This Dart example ports `thirdparty/pulumi_examples/classic-azure-ts-vm-provisioners/`.

It deploys:

- Resource group + virtual network + subnet
- Public IP + network interface + security group
- Linux virtual machine
- `pulumi_command` remote copy + remote command for post-provisioning

## Prerequisites

- Pulumi CLI installed
- Azure credentials configured for the classic Azure provider:
- `az login`, or
- `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_TENANT_ID`, `ARM_SUBSCRIPTION_ID` environment variables
- OpenSSH keypair generated (PEM private key is recommended)

## Configure

```bash
pulumi config set azure:location <location>
pulumi config set azure:subscriptionId <YOUR_SUBSCRIPTION_ID>
pulumi config set username <your_username>
pulumi config set password <your_password> --secret
cat rsa.pub | pulumi config set publicKey --
cat rsa | pulumi config set privateKey --secret --
```

`privateKey` may be either raw PEM/OpenSSH text or a base64-encoded value.

## Deploy

```bash
pulumi up
```

## Outputs

- `ipAddress`
- `catConfigStdout`

`catConfigStdout` should contain the contents of `myapp.conf` copied to the VM.

## Destroy

```bash
pulumi destroy --yes
```

# Web Server Using OpenStack (Dart)

This Dart example ports `thirdparty/pulumi_examples/openstack-py-webserver/`.

## Prerequisites

- Pulumi CLI installed
- OpenStack credentials configured for the Pulumi OpenStack provider
- An OpenSSH public key

## Configure

Required:

```bash
pulumi config set publicKey "<your-openssh-public-key>"
```

Optional:

```bash
pulumi config set imageName fedora
pulumi config set imageSourceUrl "https://ftp.plusline.net/fedora/linux/releases/34/Cloud/x86_64/images/Fedora-Cloud-Base-34-1.2.x86_64.qcow2"
pulumi config set keypairName default
pulumi config set networkName public
pulumi config set secGroupName default
pulumi config set instanceName test_fedora
pulumi config set flavorName m1.small
```

## Deploy

```bash
pulumi up
```

## Output

- `instance_ip`

## Verify

```bash
curl "$(pulumi stack output instance_ip)"
```

## Destroy

```bash
pulumi destroy --yes
```

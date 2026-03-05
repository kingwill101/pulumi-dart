import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/compute.dart' as compute;
import 'package:pulumi_azure_native/network.dart' as network;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_command/remote.dart' as remote;

String _normalizePrivateKey(String key) {
  if (key.startsWith('-----BEGIN RSA PRIVATE KEY-----') ||
      key.startsWith('-----BEGIN OPENSSH PRIVATE KEY-----')) {
    return key;
  }

  try {
    return utf8.decode(base64Decode(key));
  } catch (_) {
    return key;
  }
}

class AzureNativeMinecraftServerStack extends pulumi.Stack {
  AzureNativeMinecraftServerStack() : super() {
    final config = pulumi.Config();
    final publicKey = config.require('publicKey');
    final adminUsername = config.require('admin_username');
    final adminPassword = config.require('admin_password');
    final location = config.get('location') ?? 'westus';

    final privateKey = pulumi.Output.createSecret(
      config.require('privateKey').output(),
    ).apply<String>(_normalizePrivateKey);

    final resourceGroup = resources.ResourceGroup(
      'minecraft',
      args: resources.ResourceGroupArgs(location: location.output()),
    );

    final virtualNetwork = network.VirtualNetworkNetwork(
      'server-network',
      args: network.VirtualNetworkArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        virtualNetworkName: 'server-network'.output(),
        addressSpace: network.AddressSpace(
          addressPrefixes: ['10.0.0.0/16'].output(),
        ).output(),
      ),
    );

    final subnet = network.SubnetNetwork(
      'server-subnet',
      args: network.SubnetArgs(
        resourceGroupName: resourceGroup.name,
        virtualNetworkName: virtualNetwork.name,
        subnetName: 'default'.output(),
        addressPrefix: '10.0.0.0/24'.output(),
      ),
    );

    final publicIp = network.PublicIPAddressNetwork(
      'server-ip',
      args: network.PublicIPAddressArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        publicIpAddressName: 'server-ip'.output(),
        publicIPAllocationMethod: 'Dynamic'.output(),
      ),
    );

    final networkInterface = network.NetworkInterface(
      'server-nic',
      args: network.NetworkInterfaceArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        networkInterfaceName: 'server-nic'.output(),
        ipConfigurations: [
          network.NetworkInterfaceIPConfiguration(
            name: 'webserveripcfg'.output(),
            privateIPAllocationMethod: 'Dynamic'.output(),
            subnet: network.Subnet(id: subnet.id).output(),
            publicIPAddress: network.PublicIPAddress(id: publicIp.id).output(),
          ),
        ].output(),
      ),
    );

    final sshPath = '/home/$adminUsername/.ssh/authorized_keys';

    final server = compute.VirtualMachine(
      'server-vm',
      args: compute.VirtualMachineArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        vmName: 'server-vm'.output(),
        networkProfile: compute.NetworkProfile(
          networkInterfaces: [
            compute.NetworkInterfaceReference(
              id: networkInterface.id,
              primary: true.output(),
            ),
          ].output(),
        ).output(),
        hardwareProfile: compute.HardwareProfile(
          vmSize: 'Standard_A3'.output(),
        ).output(),
        osProfile: compute.OSProfile(
          computerName: 'hostname'.output(),
          adminUsername: adminUsername.output(),
          adminPassword: pulumi.Output.createSecret(adminPassword.output()),
          linuxConfiguration: compute.LinuxConfiguration(
            disablePasswordAuthentication: false.output(),
            ssh: compute.SshConfiguration(
              publicKeys: [
                compute.SshPublicKey(
                  keyData: publicKey.output(),
                  path: sshPath.output(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
        storageProfile: compute.StorageProfile(
          osDisk: compute.OSDisk(
            createOption: 'FromImage'.output(),
            name: 'myosdisk1'.output(),
            caching: compute.CachingTypes.valueReadWrite.output(),
            diskSizeGB: 100.output(),
          ).output(),
          imageReference: compute.ImageReference(
            publisher: 'canonical'.output(),
            offer: 'UbuntuServer'.output(),
            sku: '18.04-LTS'.output(),
            version: 'latest'.output(),
          ).output(),
        ).output(),
      ),
    );

    final publicIpAddr = server.id.apply<network.GetPublicIPAddressResult>(
      (_) => network.getPublicIPAddress(
        network.GetPublicIPAddressArgs(
          publicIpAddressName: publicIp.name,
          resourceGroupName: resourceGroup.name,
        ),
      ),
    );

    final connection = remote.Connection(
      host: publicIpAddr.apply<String>((value) {
        final ip = value.ipAddress;
        if (ip == null) {
          return '';
        }
        return ip.output();
      }),
      user: adminUsername.output(),
      privateKey: privateKey,
    ).output();

    final copyConfig = remote.CopyToRemote(
      'config',
      args: remote.CopyToRemoteArgs(
        connection: connection,
        source: pulumi.FileAsset('install.sh').output(),
        remotePath: 'install.sh'.output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [server]),
    );

    remote.Command(
      'install',
      args: remote.CommandArgs(
        connection: connection,
        create: 'sudo chmod 755 install.sh && sudo ./install.sh'.output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [copyConfig]),
    );

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'minecraftServerIpAddress': publicIpAddr.apply(
        (value) => value.ipAddress,
      ),
    });
  }
}

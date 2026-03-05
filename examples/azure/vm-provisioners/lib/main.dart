import 'dart:convert';
import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure/pulumi_azure.dart' as azure;
import 'package:pulumi_command/pulumi_command.dart' as command;

class AzureVmProvisionersStack extends pulumi.Stack {
  late final pulumi.Output<String> ipAddress;
  late final pulumi.Output<String> catConfigStdout;

  AzureVmProvisionersStack() : super() {
    final config = pulumi.Config();
    final azureConfig = pulumi.Config('azure');

    final location = azureConfig.get('location') ?? 'westus';
    final username = config.require('username');
    final password = config.require('password');
    final publicKey = config.require('publicKey');
    final configuredPrivateKey = config.require('privateKey');
    final privateKey =
        configuredPrivateKey.startsWith('-----BEGIN RSA PRIVATE KEY-----') ||
            configuredPrivateKey.startsWith(
              '-----BEGIN OPENSSH PRIVATE KEY-----',
            )
        ? configuredPrivateKey
        : utf8.decode(base64.decode(configuredPrivateKey));

    final resourceGroup = azure.core.ResourceGroup(
      'server-rg',
      args: azure.core.ResourceGroupArgs(location: location.output()),
    );

    final network = azure.network.VirtualNetwork(
      'server-network',
      args: azure.network.VirtualNetworkArgs(
        resourceGroupName: resourceGroup.name,
        addressSpaces: ['10.0.0.0/16'].output(),
      ),
    );

    final subnet = azure.network.Subnet(
      'default-subnet',
      args: azure.network.SubnetArgs(
        resourceGroupName: resourceGroup.name,
        virtualNetworkName: network.name,
        addressPrefixes: ['10.0.1.0/24'].output(),
      ),
    );

    final publicIp = azure.network.PublicIp(
      'server-ip',
      args: azure.network.PublicIpArgs(
        resourceGroupName: resourceGroup.name,
        allocationMethod: 'Dynamic'.output(),
      ),
    );

    final networkInterface = azure.network.NetworkInterface(
      'server-nic',
      args: azure.network.NetworkInterfaceArgs(
        resourceGroupName: resourceGroup.name,
        ipConfigurations: [
          azure.network.NetworkInterfaceIpConfiguration(
            name: 'webserveripcfg'.output(),
            subnetId: subnet.id,
            privateIpAddressAllocation: 'Dynamic'.output(),
            publicIpAddressId: publicIp.id,
          ),
        ].output(),
      ),
    );

    final securityGroup = azure.network.NetworkSecurityGroup(
      'sg',
      args: azure.network.NetworkSecurityGroupArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        securityRules: [
          azure.network.NetworkSecurityGroupSecurityRule(
            access: 'Allow'.output(),
            protocol: '*'.output(),
            sourceAddressPrefix: '*'.output(),
            destinationAddressPrefix: '*'.output(),
            destinationPortRange: '*'.output(),
            sourcePortRange: '*'.output(),
            direction: 'Inbound'.output(),
            name: 'in'.output(),
            priority: 100.output(),
          ),
          azure.network.NetworkSecurityGroupSecurityRule(
            access: 'Allow'.output(),
            protocol: '*'.output(),
            sourceAddressPrefix: '*'.output(),
            destinationAddressPrefix: '*'.output(),
            destinationPortRange: '*'.output(),
            sourcePortRange: '*'.output(),
            direction: 'Outbound'.output(),
            name: 'out'.output(),
            priority: 101.output(),
          ),
        ].output(),
      ),
    );

    azure.network.NetworkInterfaceSecurityGroupAssociation(
      'assoc',
      args: azure.network.NetworkInterfaceSecurityGroupAssociationArgs(
        networkInterfaceId: networkInterface.id,
        networkSecurityGroupId: securityGroup.id,
      ),
    );

    final vm = azure.compute.VirtualMachine(
      'server-vm',
      args: azure.compute.VirtualMachineArgs(
        resourceGroupName: resourceGroup.name,
        networkInterfaceIds: pulumi.Output.all([
          networkInterface.id.apply((id) => id),
        ]),
        vmSize: 'Standard_A1_v2'.output(),
        deleteDataDisksOnTermination: true.output(),
        deleteOsDiskOnTermination: true.output(),
        osProfile: azure.compute
            .VirtualMachineOsProfile(
              computerName: 'hostname'.output(),
              adminUsername: username.output(),
              adminPassword: password.output(),
            )
            .output(),
        osProfileLinuxConfig: azure.compute
            .VirtualMachineOsProfileLinuxConfig(
              disablePasswordAuthentication: false.output(),
              sshKeys: [
                azure.compute.VirtualMachineOsProfileLinuxConfigSshKey(
                  keyData: publicKey.output(),
                  path: '/home/$username/.ssh/authorized_keys'.output(),
                ),
              ].output(),
            )
            .output(),
        storageOsDisk: azure.compute
            .VirtualMachineStorageOsDisk(
              createOption: 'FromImage'.output(),
              name: 'myosdisk1'.output(),
            )
            .output(),
        storageImageReference: azure.compute
            .VirtualMachineStorageImageReference(
              publisher: 'canonical'.output(),
              offer: 'UbuntuServer'.output(),
              sku: '16.04-LTS'.output(),
              version: 'latest'.output(),
            )
            .output(),
      ),
    );

    final publicIpResult = vm.id.apply(
      (_) => azure.network.getPublicIP(
        azure.network.GetPublicIPArgs(
          name: publicIp.name,
          resourceGroupName: publicIp.resourceGroupName,
        ),
      ),
    );

    final connection = command.remote.Connection(
      host: publicIpResult.apply((value) => value.ipAddress),
      user: username.output(),
      password: password.output(),
      privateKey: privateKey.output(),
    );

    final changeToken = File('myapp.conf').readAsStringSync();

    final cpConfig = command.remote.CopyToRemote(
      'config',
      args: command.remote.CopyToRemoteArgs(
        triggers: [changeToken].output(),
        connection: connection.output(),
        source: pulumi.FileAsset('myapp.conf').output(),
        remotePath: '/home/$username/myapp.conf'.output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [vm, publicIp]),
    );

    final catConfig = command.remote.Command(
      'cat-config',
      args: command.remote.CommandArgs(
        triggers: [changeToken].output(),
        connection: connection.output(),
        create: 'cat /home/$username/myapp.conf'.output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [cpConfig]),
    );

    ipAddress = publicIpResult.apply((value) => value.ipAddress);
    catConfigStdout = catConfig.stdout;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('ipAddress', ipAddress),
      pulumi.OutputProperty('catConfigStdout', catConfigStdout),
    ];
  }
}

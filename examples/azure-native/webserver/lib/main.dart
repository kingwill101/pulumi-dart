import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/compute.dart' as compute;
import 'package:pulumi_azure_native/network.dart' as network;
import 'package:pulumi_azure_native/resources.dart' as resources;

class AzureNativeWebserverStack extends pulumi.Stack {
  AzureNativeWebserverStack() : super() {
    final config = pulumi.Config();
    final username = config.require('username');
    final password = config.require('password');
    final location = config.get('location') ?? 'westus2';

    final resourceGroup = resources.ResourceGroup(
      'server',
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
        addressPrefix: '10.0.1.0/24'.output(),
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

    const initScript = '''#!/bin/bash

echo "Hello, World!" > index.html
nohup python3 -m http.server 80 &
''';

    final vm = compute.VirtualMachine(
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
          vmSize: 'Standard_A1_v2'.output(),
        ).output(),
        osProfile: compute.OSProfile(
          computerName: 'hostname'.output(),
          adminUsername: username.output(),
          adminPassword: password.output(),
          customData: base64Encode(utf8.encode(initScript)).output(),
          linuxConfiguration: compute.LinuxConfiguration(
            disablePasswordAuthentication: false.output(),
          ).output(),
        ).output(),
        storageProfile: compute.StorageProfile(
          osDisk: compute.OSDisk(
            createOption: 'FromImage'.output(),
            name: 'myosdisk1'.output(),
          ).output(),
          imageReference: compute.ImageReference(
            publisher: 'canonical'.output(),
            offer: 'UbuntuServer'.output(),
            sku: '16.04-LTS'.output(),
            version: 'latest'.output(),
          ).output(),
        ).output(),
      ),
    );

    final publicIpAddr = vm.id.apply<network.GetPublicIPAddressResult>(
      (_) => network.getPublicIPAddress(
        network.GetPublicIPAddressArgs(
          publicIpAddressName: publicIp.name,
          resourceGroupName: resourceGroup.name,
        ),
      ),
    );

    registerOutputs({
      'public_ip': publicIpAddr.apply((value) => value.ipAddress),
    });
  }
}

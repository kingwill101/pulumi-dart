import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/authorization.dart' as authorization;
import 'package:pulumi_azure_native/compute.dart' as compute;
import 'package:pulumi_azure_native/network.dart' as network;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_random/pulumi_random.dart' as random;

class AzureNativeLoadBalancerVmStack extends pulumi.Stack {
  AzureNativeLoadBalancerVmStack() : super() {
    final config = pulumi.Config();
    final username = config.require('username');
    final password = config.require('password');

    final project = pulumi.Deployment.instance.projectName;
    const baseCidr = '10.0.0.0/16';

    final az = pulumi.output(authorization.getClientConfig());

    final resourceGroup = resources.ResourceGroup('$project-resource-group');

    final vnet = network.VirtualNetworkNetwork(
      '$project-network',
      args: network.VirtualNetworkArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        virtualNetworkName: '$project-network'.output(),
        addressSpace: network.AddressSpace(
          addressPrefixes: [baseCidr].output(),
        ).output(),
      ),
    );

    final subnet = network.SubnetNetwork(
      '$project-subnet',
      args: network.SubnetArgs(
        resourceGroupName: resourceGroup.name,
        virtualNetworkName: vnet.name,
        subnetName: 'default'.output(),
        addressPrefix: '10.0.1.0/24'.output(),
      ),
    );

    final lbDomainNameLabel = random.index
        .RandomString(
          '$project-lb-domain-label',
          args: random.index.RandomStringArgs(
            length: 8.output(),
            upper: false.output(),
            special: false.output(),
          ),
        )
        .result
        .apply<String>((result) => '$project-$result');

    final lbPublicIp = network.PublicIPAddressNetwork(
      '$project-lb-public-ip',
      args: network.PublicIPAddressArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        publicIpAddressName: '$project-lb-public-ip'.output(),
        publicIPAllocationMethod: 'Static'.output(),
        publicIPAddressVersion: 'IPv4'.output(),
        dnsSettings: network.PublicIPAddressDnsSettings(
          domainNameLabel: lbDomainNameLabel,
        ).output(),
        sku: network.PublicIPAddressSku(name: 'Standard'.output()).output(),
      ),
    );

    final lbName = '$project-lb';
    final lbBackendName = '$lbName-backend';
    final lbFrontendName = '$lbName-frontend';
    final lbProbeName = '$lbName-probe';

    final lbId =
        pulumi.Output.tuple(
          az.apply((cfg) => cfg.subscriptionId),
          resourceGroup.name,
        ).apply<String>(
          (args) =>
              '/subscriptions/${args.$1}/resourceGroups/${args.$2}/providers/Microsoft.Network/loadBalancers/$lbName',
        );
    final lbBackendId = lbId.apply<String>(
      (id) => '$id/backendAddressPools/$lbBackendName',
    );
    final lbFrontendId = lbId.apply<String>(
      (id) => '$id/frontendIPConfigurations/$lbFrontendName',
    );
    final lbProbeId = lbId.apply<String>((id) => '$id/probes/$lbProbeName');

    final loadBalancer = network.LoadBalancer(
      lbName,
      args: network.LoadBalancerArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        loadBalancerName: lbName.output(),
        backendAddressPools: [
          network.BackendAddressPool(name: lbBackendName.output()),
        ].output(),
        frontendIPConfigurations: [
          network.FrontendIPConfiguration(
            name: lbFrontendName.output(),
            publicIPAddress: network.PublicIPAddress(
              id: lbPublicIp.id,
            ).output(),
          ),
        ].output(),
        loadBalancingRules: [
          network.LoadBalancingRule(
            backendAddressPool: network.SubResource(id: lbBackendId).output(),
            backendPort: 80.output(),
            disableOutboundSnat: false.output(),
            enableFloatingIP: false.output(),
            enableTcpReset: true.output(),
            frontendIPConfiguration: network.SubResource(
              id: lbFrontendId,
            ).output(),
            frontendPort: 80.output(),
            idleTimeoutInMinutes: 4.output(),
            loadDistribution: 'Default'.output(),
            name: '$lbName-rule1'.output(),
            probe: network.SubResource(id: lbProbeId).output(),
            protocol: 'Tcp'.output(),
          ),
        ].output(),
        probes: [
          network.Probe(
            intervalInSeconds: 5.output(),
            name: lbProbeName.output(),
            numberOfProbes: 1.output(),
            port: 80.output(),
            protocol: 'Http'.output(),
            requestPath: '/'.output(),
          ),
        ].output(),
        sku: network.LoadBalancerSku(name: 'Standard'.output()).output(),
      ),
    );

    final nic = network.NetworkInterface(
      '$project-network-interface',
      args: network.NetworkInterfaceArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        networkInterfaceName: '$project-network-interface'.output(),
        ipConfigurations: [
          network.NetworkInterfaceIPConfiguration(
            name: 'webserver-ipconfiguration'.output(),
            privateIPAllocationMethod: 'Dynamic'.output(),
            subnet: network.Subnet(id: subnet.id).output(),
            loadBalancerBackendAddressPools: [
              network.BackendAddressPool(id: lbBackendId),
            ].output(),
          ),
        ].output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [loadBalancer]),
    );

    const initScript = '''#!/bin/bash
echo "Hello, World!" > index.html
nohup python3 -m http.server 80 &
''';

    compute.VirtualMachine(
      project,
      args: compute.VirtualMachineArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        vmName: project.output(),
        networkProfile: compute.NetworkProfile(
          networkInterfaces: [
            compute.NetworkInterfaceReference(id: nic.id),
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
          osDisk: compute.OSDisk(createOption: 'FromImage'.output()).output(),
          imageReference: compute.ImageReference(
            publisher: 'Canonical'.output(),
            offer: 'UbuntuServer'.output(),
            sku: '16.04-LTS'.output(),
            version: 'latest'.output(),
          ).output(),
        ).output(),
      ),
    );

    final lbAddress = pulumi.Output.tuple(resourceGroup.name, lbPublicIp.name)
        .apply<network.GetPublicIPAddressResult>(
          (args) => network.getPublicIPAddress(
            network.GetPublicIPAddressArgs(
              resourceGroupName: args.$1.output(),
              publicIpAddressName: args.$2.output(),
            ),
          ),
        );

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'lb-ip': lbAddress.apply<String?>((result) => result.ipAddress),
      'fqdn': lbAddress.apply<String?>((result) {
        final fqdn = result.dnsSettings?.fqdn;
        if (fqdn == null) {
          return null;
        }
        return fqdn.output().apply<String?>((value) {
          if (value.isEmpty) {
            return null;
          }
          return 'http://$value';
        });
      }),
    });
  }
}

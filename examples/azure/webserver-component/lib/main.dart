import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure/pulumi_azure.dart' as azure;

import 'webserver.dart';

class AzureWebserverComponentStack extends pulumi.Stack {
  late final pulumi.Output<List<String>> ipAddresses;

  AzureWebserverComponentStack() : super() {
    final config = pulumi.Config();
    final azureConfig = pulumi.Config('azure');

    final count = (config.getNumber('count') ?? 2).toInt();
    final username = config.require('username');
    final password = config.require('password');
    final location = azureConfig.get('location') ?? 'westus';

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

    final servers = <WebServer>[];
    for (var i = 0; i < count; i++) {
      final bootScript =
          '''#!/bin/bash
echo "Hello, from Server ${i + 1}!" > index.html
nohup python3 -m http.server 80 &
''';

      servers.add(
        WebServer(
          'ws-$i',
          args: WebServerArgs(
            username: username.output(),
            password: password.output(),
            bootScript: bootScript.output(),
            resourceGroupName: resourceGroup.name,
            subnetId: subnet.id,
          ),
        ),
      );
    }

    ipAddresses = pulumi.Output.all(servers.map((server) => server.ipAddress));
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('ipAddresses', ipAddresses)];
  }
}

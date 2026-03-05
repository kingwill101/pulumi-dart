import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class VpcArgs {
  VpcArgs({required this.subnetCidrBlocks});

  final List<String> subnetCidrBlocks;
}

class Vpc extends pulumi.ComponentResource {
  late final network;
  late final subnets;
  late final router;
  late final nat;

  Vpc(String name, VpcArgs args, {pulumi.ComponentResourceOptions? opts})
    : super(
        'my:modules:Vpc',
        name,
        const {},
        opts ?? pulumi.ComponentResourceOptions(),
      ) {
    network = gcp.compute.Network(
      name,
      args: gcp.compute.NetworkArgs(autoCreateSubnetworks: false.output()),
      options: pulumi.CustomResourceOptions(parent: this),
    );

    subnets = [];
    for (var i = 0; i < args.subnetCidrBlocks.length; i++) {
      final subnet = gcp.compute.Subnetwork(
        '$name-$i',
        args: gcp.compute.SubnetworkArgs(
          network: network.selfLink,
          ipCidrRange: args.subnetCidrBlocks[i].output(),
        ),
        options: pulumi.CustomResourceOptions(parent: network),
      );
      subnets.add(subnet);
    }

    router = gcp.compute.Router(
      name,
      args: gcp.compute.RouterArgs(network: network.selfLink),
      options: pulumi.CustomResourceOptions(parent: network),
    );

    nat = gcp.compute.RouterNat(
      name,
      args: gcp.compute.RouterNatArgs(
        router: router.name,
        natIpAllocateOption: 'AUTO_ONLY'.output(),
        sourceSubnetworkIpRangesToNat: 'ALL_SUBNETWORKS_ALL_IP_RANGES'.output(),
      ),
      options: pulumi.CustomResourceOptions(parent: network),
    );

    registerOutputs({});
  }
}

class ServerArgs {
  ServerArgs({
    this.machineType = 'f1-micro',
    required this.serviceName,
    required this.metadataStartupScript,
    required this.ports,
    required this.subnet,
    Map<String, String>? metadata,
  }) : metadata = metadata ?? <String, String>{};

  final String machineType;
  final String serviceName;
  final String metadataStartupScript;
  final List<String> ports;
  final subnet;
  final Map<String, String> metadata;
}

class Server extends pulumi.ComponentResource {
  late final firewall;
  late final address;
  late final instance;

  Server(String name, ServerArgs args, {pulumi.ComponentResourceOptions? opts})
    : super(
        'my:modules:Server',
        name,
        const {},
        opts ?? pulumi.ComponentResourceOptions(),
      ) {
    firewall = gcp.compute.Firewall(
      name,
      args: gcp.compute.FirewallArgs(
        network: args.subnet.network.output(),
        allows: [
          gcp.compute.FirewallAllow(
            protocol: 'tcp'.output(),
            ports: args.ports.output(),
          ),
        ].output(),
        targetTags: [args.serviceName].output(),
      ),
      options: pulumi.CustomResourceOptions(parent: this),
    );

    address = gcp.compute.Address(
      name,
      options: pulumi.CustomResourceOptions(parent: this),
    );

    instance = gcp.compute.Instance(
      name,
      args: gcp.compute.InstanceArgs(
        machineType: args.machineType.output(),
        bootDisk: gcp.compute
            .InstanceBootDisk(
              initializeParams: gcp.compute
                  .InstanceBootDiskInitializeParams(
                    image: 'ubuntu-os-cloud/ubuntu-1804-lts'.output(),
                  )
                  .output(),
            )
            .output(),
        networkInterfaces: [
          gcp.compute.InstanceNetworkInterface(
            subnetwork: args.subnet.selfLink,
            accessConfigs: [
              gcp.compute.InstanceNetworkInterfaceAccessConfig(
                natIp: address.address,
              ),
            ].output(),
          ),
        ].output(),
        tags: [args.serviceName].output(),
        metadata: args.metadata.output(),
        metadataStartupScript: args.metadataStartupScript.output(),
      ),
      options: pulumi.CustomResourceOptions(parent: this),
    );

    registerOutputs({});
  }
}

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    final config = pulumi.Config();
    final project = config.get('project') ?? 'demo';
    final owner = config.get('owner') ?? Platform.environment['USER']!;
    final subnetCidrBlocks = config
        .requireObject<List<dynamic>>('subnet_cidr_blocks')
        .cast<String>();

    final baseMetadata = <String, String>{'Project': project, 'Owner': owner};

    final network = Vpc(project, VpcArgs(subnetCidrBlocks: subnetCidrBlocks));

    const nginxInstallScript = '''#!/bin/bash
apt-get -y update
apt-get -y install nginx
echo "Powered by Pulumi!" > /var/www/html/index.html
''';

    final nginxServiceName = 'nginx';
    final nginxInstance = Server(
      '$project-$nginxServiceName',
      ServerArgs(
        serviceName: nginxServiceName,
        metadataStartupScript: nginxInstallScript,
        ports: ['80'],
        subnet: network.subnets[0],
        metadata: baseMetadata,
      ),
    );

    registerOutputs({
      'network': network.network.name,
      'nginx_public_ip': nginxInstance.instance.networkInterfaces.apply(
        (networkInterfaces) =>
            networkInterfaces.isEmpty ||
                networkInterfaces[0].accessConfigs == null
            ? ''
            : networkInterfaces[0].accessConfigs!.apply(
                (accessConfigs) =>
                    accessConfigs.isEmpty ? '' : accessConfigs[0].natIp ?? '',
              ),
      ),
    });
  }
}

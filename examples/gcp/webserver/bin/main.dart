// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    final network = gcp.compute.Network(
      "network",
      args: gcp.compute.NetworkArgs(
        autoCreateSubnetworks: true,
      ),
    );

    final firewall = gcp.compute.Firewall(
      "firewall",
      args: gcp.compute.FirewallArgs(
        network: network.name,
        sourceTags: ["web"],
        allows: [
          gcp.compute.FirewallAllow(
            protocol: "tcp",
            ports: ["22", "80"],
          ),
        ],
      ),
    );

    final startupScript = r'''#!/bin/bash
echo "Hello, World!" > index.html
nohup python -m SimpleHTTPServer 80 &''';

    final instance = gcp.compute.Instance(
      "instance",
      args: gcp.compute.InstanceArgs(
        machineType: "f1-micro",
        metadataStartupScript: startupScript,
        bootDisk: gcp.compute.InstanceBootDisk(
          initializeParams: gcp.compute.InstanceBootDiskInitializeParams(
            image: "debian-cloud/debian-9-stretch-v20181210",
          ),
        ),
        networkInterfaces: [
          gcp.compute.InstanceNetworkInterface(
            network: network.name,
            accessConfigs: [
              gcp.compute.InstanceNetworkInterfaceAccessConfig(),
            ],
          ),
        ],
        serviceAccount: gcp.compute.InstanceServiceAccount(
          scopes: ["https://www.googleapis.com/auth/cloud-platform"],
        ),
      ),
      options: pulumi.CustomResourceOptions(
        dependsOn: [firewall],
      ),
    );

    registerOutputs({
      "instanceName": instance.name,
      "instanceIP": instance.networkInterfaces.apply((interfaces) {
        return interfaces.isNotEmpty && interfaces[0].accessConfigs != null
            ? interfaces[0].accessConfigs![0].natIp ?? ""
            : "";
      }),
    });
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => ExampleStack());
}

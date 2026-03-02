// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    final network = gcp.compute.Network(
      "network",
      args: gcp.compute.NetworkArgs(
        autoCreateSubnetworks: true.output(),
      ),
    );

    final firewall = gcp.compute.Firewall(
      "firewall",
      args: gcp.compute.FirewallArgs(
        network: network.name,
        sourceTags: ['web'].output(),
        allows: [
          gcp.compute.FirewallAllow(
            protocol: 'tcp'.output(),
            ports: ['22', '80'].output(),
          ),
        ].output(),
      ),
    );

    final startupScript = r'''#!/bin/bash
echo "Hello, World!" > index.html
nohup python -m SimpleHTTPServer 80 &''';

    final instance = gcp.compute.Instance(
      "instance",
      args: gcp.compute.InstanceArgs(
        machineType: "f1-micro".output(),
        metadataStartupScript: startupScript.output(),
        bootDisk: gcp.compute.InstanceBootDisk(
          initializeParams: gcp.compute.InstanceBootDiskInitializeParams(
            image: "debian-cloud/debian-9-stretch-v20181210".output(),
          ).output(),
        ).output(),
        networkInterfaces: [
          gcp.compute.InstanceNetworkInterface(
            network: network.name,
            accessConfigs: [
              gcp.compute.InstanceNetworkInterfaceAccessConfig(),
            ].output(),
          ),
        ].output(),
        serviceAccount: gcp.compute.InstanceServiceAccount(
          scopes: [
            "https://www.googleapis.com/auth/cloud-platform",
          ].output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(
        dependsOn: [firewall],
      ),
    );

    registerOutputs({
      "instanceName": instance.name,
      "instanceIP": pulumi.output(instance.networkInterfaces).apply((interfaces) {
        return interfaces.isNotEmpty && interfaces[0].accessConfigs != null
            ? (interfaces[0].accessConfigs!.isNotEmpty
                ? interfaces[0].accessConfigs![0].natIp ?? ""
                : "")
            : "";
      }),
    });
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => ExampleStack());
}

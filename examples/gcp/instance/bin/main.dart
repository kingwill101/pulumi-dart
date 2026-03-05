// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    final instance = gcp.compute.Instance(
      "instance",
      args: gcp.compute.InstanceArgs(
        machineType: "n1-standard-1".output(),
        bootDisk: gcp.compute
            .InstanceBootDisk(
              initializeParams: gcp.compute
                  .InstanceBootDiskInitializeParams(
                    image: "debian-cloud/debian-9".output(),
                  )
                  .output(),
            )
            .output(),
        networkInterfaces: [
          gcp.compute.InstanceNetworkInterface(network: "default".output()),
        ].output(),
      ),
    );

    registerOutputs({"instanceName": instance.name});
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => ExampleStack());
}

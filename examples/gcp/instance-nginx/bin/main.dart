// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    const script = '''#!/bin/bash
apt -y update
apt -y install nginx
''';

    const containerInstanceMetadataScript = '''spec:
containers:
    - name: manual-container-instance-1
      image: 'gcr.io/cloud-marketplace/google/nginx1:latest'
      stdin: false
      tty: false
  restartPolicy: Always

# This container declaration format is not public API and may change without notice. Please
# use gcloud command-line tool or Google Cloud Console to run Containers on Google Compute Engine.
''';

    final network = gcp.compute.Network('poc');

    gcp.compute.Firewall(
      'poc',
      args: gcp.compute.FirewallArgs(
        network: network.selfLink,
        allows: [
          gcp.compute.FirewallAllow(
            protocol: 'tcp'.output(),
            ports: ['22'].output(),
          ),
          gcp.compute.FirewallAllow(
            protocol: 'tcp'.output(),
            ports: ['80'].output(),
          ),
        ].output(),
      ),
    );

    final instanceAddress = gcp.compute.Address('poc');
    final instance = gcp.compute.Instance(
      'poc',
      args: gcp.compute.InstanceArgs(
        machineType: 'f1-micro'.output(),
        bootDisk: gcp.compute
            .InstanceBootDisk(
              initializeParams: gcp.compute
                  .InstanceBootDiskInitializeParams(
                    image: 'ubuntu-os-cloud/ubuntu-1804-bionic-v20200414'
                        .output(),
                  )
                  .output(),
            )
            .output(),
        networkInterfaces: [
          gcp.compute.InstanceNetworkInterface(
            network: network.id,
            accessConfigs: [
              gcp.compute.InstanceNetworkInterfaceAccessConfig(
                natIp: instanceAddress.address,
              ),
            ].output(),
          ),
        ].output(),
        metadataStartupScript: script.output(),
      ),
    );

    final containerInstanceAddress = gcp.compute.Address(
      'poc-container-instance',
    );
    final containerInstance = gcp.compute.Instance(
      'poc-container-instance',
      args: gcp.compute.InstanceArgs(
        machineType: 'f1-micro'.output(),
        bootDisk: gcp.compute
            .InstanceBootDisk(
              initializeParams: gcp.compute
                  .InstanceBootDiskInitializeParams(
                    image: 'cos-cloud/cos-stable-81-12871-69-0'.output(),
                  )
                  .output(),
            )
            .output(),
        metadata: {
          'gce-container-declaration': containerInstanceMetadataScript,
        }.output(),
        networkInterfaces: [
          gcp.compute.InstanceNetworkInterface(
            network: network.id,
            accessConfigs: [
              gcp.compute.InstanceNetworkInterfaceAccessConfig(
                natIp: containerInstanceAddress.address,
              ),
            ].output(),
          ),
        ].output(),
        serviceAccount: gcp.compute
            .InstanceServiceAccount(
              email: 'default'.output(),
              scopes: [
                'https://www.googleapis.com/auth/devstorage.read_only',
                'https://www.googleapis.com/auth/logging.write',
                'https://www.googleapis.com/auth/monitoring.write',
                'https://www.googleapis.com/auth/service.management.readonly',
                'https://www.googleapis.com/auth/servicecontrol',
                'https://www.googleapis.com/auth/trace.append',
              ].output(),
            )
            .output(),
      ),
    );

    registerOutputs({
      'instance_name': instance.name,
      'instance_external_ip': instanceAddress.address,
      'container_instance_name': containerInstance.name,
      'container_instance_external_ip': containerInstanceAddress.address,
    });
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => ExampleStack());
}

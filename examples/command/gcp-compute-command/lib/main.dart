import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/pulumi_command.dart' as command;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;

class CommandGcpComputeCommandStack extends pulumi.Stack {
  CommandGcpComputeCommandStack() : super() {
    final config = pulumi.Config();
    final publicKey = config.require('publicKey');
    final privateKey = _decodePrivateKey(config.require('privateKey'));

    final svcacct = gcp.serviceaccount.Account(
      'my-service-account',
      args: gcp.serviceaccount.AccountArgs(
        accountId: 'service-account'.input(),
        displayName: 'Service Account for command example'.input(),
      ),
    );

    gcp.serviceaccount.Key(
      'my-service-key',
      args: gcp.serviceaccount.KeyArgs(
        serviceAccountId: svcacct.name,
        publicKeyType: 'TYPE_X509_PEM_FILE'.input(),
      ),
    );

    final addr = gcp.compute.Address('my-address');

    final computeInstance = gcp.compute.Instance(
      'my-instance',
      args: gcp.compute.InstanceArgs(
        machineType: 'f1-micro'.input(),
        bootDisk: gcp.compute
            .InstanceBootDisk(
              initializeParams: gcp.compute
                  .InstanceBootDiskInitializeParams(
                    image: 'ubuntu-os-cloud/ubuntu-2004-lts'.input(),
                  )
                  .input(),
            )
            .input(),
        networkInterfaces: [
          gcp.compute.InstanceNetworkInterface(
            network: 'default'.input(),
            accessConfigs: [
              gcp.compute.InstanceNetworkInterfaceAccessConfig(
                natIp: addr.address,
              ),
            ].input(),
          ),
        ].input(),
        serviceAccount: gcp.compute
            .InstanceServiceAccount(
              scopes: [
                'https://www.googleapis.com/auth/cloud-platform',
              ].input(),
              email: svcacct.email,
            )
            .input(),
        metadata: {'ssh-keys': 'user:$publicKey'}.input(),
      ),
    );

    final connection = command.remote.Connection(
      host: addr.address,
      privateKey: privateKey.input(),
      user: 'user'.input(),
    );

    final cpConfig = command.remote.CopyToRemote(
      'config',
      args: command.remote.CopyToRemoteArgs(
        connection: connection.input(),
        source: pulumi.FileAsset('myapp.conf').input(),
        remotePath: 'myapp.conf'.input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [computeInstance]),
    );

    final catConfig = command.remote.Command(
      'cat-config',
      args: command.remote.CommandArgs(
        connection: connection.input(),
        create: 'cat myapp.conf'.input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [cpConfig]),
    );

    registerOutputs({
      'publicIp': addr.address,
      'catConfigStdout': catConfig.stdout,
    });
  }
}

String _decodePrivateKey(String key) {
  try {
    final decoded = utf8.decode(base64.decode(key));
    if (decoded.startsWith('-----BEGIN ')) {
      return decoded;
    }
  } catch (_) {
    // Keep original key when value is not base64.
  }
  return key;
}

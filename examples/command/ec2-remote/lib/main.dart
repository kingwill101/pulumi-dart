import 'dart:convert';
import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_command/pulumi_command.dart' as command;

class CommandEc2RemoteStack extends pulumi.Stack {
  CommandEc2RemoteStack() : super() {
    final config = pulumi.Config();
    pulumi.Input<String>? keyName = config.get('keyName')?.input();
    final publicKey = config.get('publicKey');
    final privateKey = _loadPrivateKey(config.get('privateKeyBase64'));

    if (keyName == null) {
      if (publicKey == null) {
        throw Exception('must provide one of keyName or publicKey');
      }
      final key = aws.ec2.KeyPair(
        'key',
        args: aws.ec2.KeyPairArgs(publicKey: publicKey.input()),
      );
      keyName = key.keyName;
    }

    final secgrp = aws.ec2.SecurityGroup(
      'secgrp',
      args: aws.ec2.SecurityGroupArgs(
        description: 'Foo'.input(),
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 22.input(),
            toPort: 22.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 80.input(),
            toPort: 80.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
      ),
    );

    final amiId = pulumi
        .output(
          aws.ec2.getAmi(
            aws.ec2.GetAmiArgs(
              owners: ['amazon'].input(),
              mostRecent: true.input(),
              filters: [
                aws.ec2.GetAmiFilter(
                  name: 'name'.input(),
                  values: ['amzn2-ami-hvm-*-x86_64-ebs'].input(),
                ),
              ].input(),
            ),
          ),
        )
        .apply<String>((ami) => (ami as dynamic).id as String);

    final instanceType = _loadInstanceType('size.ts', 't2.micro');

    final server = aws.ec2.Instance(
      'server',
      args: aws.ec2.InstanceArgs(
        instanceType: instanceType.input(),
        ami: amiId,
        keyName: keyName,
        vpcSecurityGroupIds: pulumi.InputList<String>([secgrp.id]),
      ),
    );

    final connection = command.remote.Connection(
      host: server.publicIp,
      user: 'ec2-user'.input(),
      privateKey: privateKey.input(),
    );

    final poll = command.remote.Command(
      'poll',
      args: command.remote.CommandArgs(
        connection: command.remote
            .Connection(
              host: connection.host,
              user: connection.user,
              privateKey: connection.privateKey,
              dialErrorLimit: (-1).input(),
            )
            .input(),
        create: "echo 'Connection established'".input(),
      ),
      options: pulumi.CustomResourceOptions(
        customTimeouts: const pulumi.CustomTimeouts(create: '12m'),
      ),
    );

    final hostname = command.remote.Command(
      'hostname',
      args: command.remote.CommandArgs(
        connection: connection.input(),
        create: 'hostname'.input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [poll]),
    );

    command.remote.Command(
      'remotePrivateIP',
      args: command.remote.CommandArgs(
        connection: connection.input(),
        create: server.privateIp.apply((ip) => 'echo $ip > private_ip.txt'),
        delete: 'rm private_ip.txt'.input(),
      ),
      options: pulumi.CustomResourceOptions(
        deleteBeforeReplace: true,
        dependsOn: [poll],
      ),
    );

    command.remote.Command(
      'remoteWithNoDialRetryPrivateIP',
      args: command.remote.CommandArgs(
        connection: command.remote
            .Connection(
              host: connection.host,
              user: connection.user,
              privateKey: connection.privateKey,
              dialErrorLimit: 1.input(),
            )
            .input(),
        create: server.privateIp.apply(
          (ip) => 'echo $ip > private_ip_on_no_dial_retry.txt',
        ),
        delete: 'rm private_ip_on_no_dial_retry.txt'.input(),
      ),
      options: pulumi.CustomResourceOptions(
        deleteBeforeReplace: true,
        dependsOn: [poll],
      ),
    );

    command.local.Command(
      'localPrivateIP',
      args: command.local.CommandArgs(
        create: server.privateIp.apply((ip) => 'echo $ip > private_ip.txt'),
        delete: 'rm private_ip.txt'.input(),
      ),
      options: pulumi.CustomResourceOptions(deleteBeforeReplace: true),
    );

    final sizeFile = command.remote.CopyToRemote(
      'size',
      args: command.remote.CopyToRemoteArgs(
        connection: connection.input(),
        source: pulumi.FileAsset('./size.ts').input(),
        remotePath: 'size.ts'.input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [poll]),
    );

    final catSize = command.remote.Command(
      'checkSize',
      args: command.remote.CommandArgs(
        connection: connection.input(),
        create: 'cat size.ts'.input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [sizeFile]),
    );

    registerOutputs({
      'connectionSecret': hostname.connection,
      'confirmSize': catSize.stdout,
      'publicIp': server.publicIp,
      'publicHostName': server.publicDns,
      'hostnameStdout': hostname.stdout,
    });
  }
}

String _loadPrivateKey(String? privateKeyBase64) {
  if (privateKeyBase64 != null && privateKeyBase64.isNotEmpty) {
    return utf8.decode(base64.decode(privateKeyBase64));
  }

  final home = Platform.environment['HOME'];
  if (home == null || home.isEmpty) {
    throw Exception('HOME must be set when privateKeyBase64 is not configured');
  }

  final privateKeyPath = '$home/.ssh/id_rsa';
  final keyFile = File(privateKeyPath);
  if (!keyFile.existsSync()) {
    throw Exception(
      'private key not found at $privateKeyPath. '
      'Set config key privateKeyBase64 or provide ~/.ssh/id_rsa.',
    );
  }

  return keyFile.readAsStringSync();
}

String _loadInstanceType(String path, String fallback) {
  final file = File(path);
  if (!file.existsSync()) {
    return fallback;
  }

  final content = file.readAsStringSync();
  final match = RegExp(r'''['"]([^'"]+)['"]''').firstMatch(content);
  return match?.group(1) ?? content.trim();
}

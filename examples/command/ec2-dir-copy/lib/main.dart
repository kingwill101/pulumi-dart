import 'dart:convert';
import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_command/pulumi_command.dart' as command;

class CommandEc2DirCopyStack extends pulumi.Stack {
  CommandEc2DirCopyStack() : super() {
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
                  values: ['al2023-ami-2023.*-kernel-*-x86_64'].input(),
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
        customTimeouts: const pulumi.CustomTimeouts(create: '10m'),
      ),
    );

    final destDir = config.require('destDir');

    final copy = command.remote.CopyToRemote(
      'copy',
      args: command.remote.CopyToRemoteArgs(
        connection: connection.input(),
        source: pulumi.FileArchive('src').input(),
        remotePath: destDir.input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [poll]),
    );

    final triggerToken = _snapshotDirectory('src');

    final ls = command.remote.Command(
      'ls',
      args: command.remote.CommandArgs(
        connection: connection.input(),
        create: 'find $destDir | sort'.input(),
        triggers: [triggerToken].input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [copy]),
    );

    registerOutputs({'destDir': destDir, 'lsRemote': ls.stdout});
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

String _snapshotDirectory(String directoryPath) {
  final entries =
      Directory(
          directoryPath,
        ).listSync(recursive: true).whereType<File>().toList()
        ..sort((a, b) => a.path.compareTo(b.path));

  final buffer = StringBuffer();
  for (final file in entries) {
    buffer.writeln(file.path);
    buffer.writeln(file.readAsStringSync());
  }

  return buffer.toString();
}

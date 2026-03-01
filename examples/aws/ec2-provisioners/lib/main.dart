import 'dart:convert';
import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_command/pulumi_command.dart' as command;

Future<void> run() async {
  final config = pulumi.Config();

  var keyName = config.get('keyName');
  final publicKey = config.get('publicKey');

  final privateKey = config.require('privateKey').apply<String>((key) {
    if (key.startsWith('-----BEGIN RSA PRIVATE KEY-----') ||
        key.startsWith('-----BEGIN OPENSSH PRIVATE KEY-----')) {
      return key;
    }
    return utf8.decode(base64.decode(key));
  });

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

  final ami = await aws.ec2.getAmi(
    aws.ec2.GetAmiArgs(
      owners: ['amazon'].input(),
      mostRecent: true.input(),
      filters: [
        aws.ec2.GetAmiFilter(
          name: 'name'.input(),
          values: ['amzn2-ami-hvm-*-x86_64-gp2'].input(),
        ),
      ].input(),
    ),
  );

  if (keyName == null) {
    if (publicKey == null) {
      throw Exception('must provide one of `keyName` or `publicKey`');
    }
    final key = aws.ec2.KeyPair(
      'key',
      args: aws.ec2.KeyPairArgs(publicKey: publicKey.input()),
    );
    keyName = key.keyName;
  }

  final server = aws.ec2.Instance(
    'server',
    args: aws.ec2.InstanceArgs(
      instanceType: 't2.micro'.input(),
      ami: ami.id.input(),
      keyName: keyName,
      vpcSecurityGroupIds: [secgrp.id].input(),
    ),
  );

  final connection = pulumi.Output.all([server.publicIp, privateKey]).apply<
    command.remote.Connection
  >((values) {
    return command.remote.Connection(
      host: values[0] as String,
      user: 'ec2-user',
      privateKey: values[1] as String,
    );
  });

  final changeToken = File('myapp.conf').readAsStringSync();

  final cpConfig = command.remote.CopyToRemote(
    'config',
    args: command.remote.CopyToRemoteArgs(
      connection: connection.output(),
      source: pulumi.FileAsset('myapp.conf').output(),
      remotePath: 'myapp.conf'.output(),
      triggers: [changeToken].output(),
    ),
    options: pulumi.CustomResourceOptions(dependsOn: [server]),
  );

  final catConfig = command.remote.Command(
    'cat-config',
    args: command.remote.CommandArgs(
      connection: connection.output(),
      create: 'cat myapp.conf'.output(),
      triggers: [changeToken].output(),
    ),
    options: pulumi.CustomResourceOptions(dependsOn: [cpConfig]),
  );

  pulumi.export('publicIp', server.publicIp);
  pulumi.export('publicHostName', server.publicDns);
  pulumi.export('catConfigStdout', catConfig.stdout);
}

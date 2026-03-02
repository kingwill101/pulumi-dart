import 'dart:convert';
import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_command/pulumi_command.dart' as command;

class Ec2ProvisionersStack extends pulumi.Stack {
  late final pulumi.Output<String> publicIp;
  late final pulumi.Output<String> publicHostName;
  late final pulumi.Output<String> catConfigStdout;

  Ec2ProvisionersStack() {
    final config = pulumi.Config();

    pulumi.Input<String>? keyName = config.get('keyName')?.input();
    final publicKey = config.get('publicKey');

    final configuredPrivateKey = config.require('privateKey');
    final privateKey =
        configuredPrivateKey.startsWith('-----BEGIN RSA PRIVATE KEY-----') ||
            configuredPrivateKey.startsWith(
              '-----BEGIN OPENSSH PRIVATE KEY-----',
            )
        ? configuredPrivateKey
        : utf8.decode(base64.decode(configuredPrivateKey));

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
                  values: ['amzn2-ami-hvm-*-x86_64-gp2'].input(),
                ),
              ].input(),
            ),
          ),
        )
        .apply<String>((ami) => (ami as dynamic).id as String);

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

    final changeToken = File('myapp.conf').readAsStringSync();

    final cpConfig = command.remote.CopyToRemote(
      'config',
      args: command.remote.CopyToRemoteArgs(
        connection: connection.input(),
        source: pulumi.FileAsset('myapp.conf').input(),
        remotePath: 'myapp.conf'.input(),
        triggers: [changeToken].input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [server]),
    );

    final catConfig = command.remote.Command(
      'cat-config',
      args: command.remote.CommandArgs(
        connection: connection.input(),
        create: 'cat myapp.conf'.input(),
        triggers: [changeToken].input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [cpConfig]),
    );

    publicIp = server.publicIp;
    publicHostName = server.publicDns;
    catConfigStdout = catConfig.stdout;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('publicIp', publicIp),
      pulumi.OutputProperty('publicHostName', publicHostName),
      pulumi.OutputProperty('catConfigStdout', catConfigStdout),
    ];
  }
}

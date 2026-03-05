import 'dart:convert';
import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_command/pulumi_command.dart' as command;

class CommandEc2RemoteProxyStack extends pulumi.Stack {
  CommandEc2RemoteProxyStack() : super() {
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

    final ingress = aws.ec2.SecurityGroup(
      'ingress',
      args: aws.ec2.SecurityGroupArgs(
        description:
            'A security group that will accept SSH connections from the outside world.'
                .input(),
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
        egress: [
          aws.ec2.SecurityGroupEgress(
            fromPort: 0.input(),
            toPort: 0.input(),
            protocol: '-1'.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
            ipv6CidrBlocks: ['::/0'].input(),
          ),
        ].input(),
      ),
    );

    final validated = aws.ec2.SecurityGroup(
      'validated',
      args: aws.ec2.SecurityGroupArgs(
        description:
            'A security group that will only accept connections that have already been validated.'
                .input(),
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 22.input(),
            toPort: 22.input(),
            securityGroups: pulumi.InputList<String>([ingress.id]),
          ),
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 80.input(),
            toPort: 80.input(),
            securityGroups: pulumi.InputList<String>([ingress.id]),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            fromPort: 0.input(),
            toPort: 0.input(),
            protocol: '-1'.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
            ipv6CidrBlocks: ['::/0'].input(),
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
        vpcSecurityGroupIds: pulumi.InputList<String>([validated.id]),
      ),
    );

    final proxy = aws.ec2.Instance(
      'proxy',
      args: aws.ec2.InstanceArgs(
        instanceType: instanceType.input(),
        ami: amiId,
        keyName: keyName,
        vpcSecurityGroupIds: pulumi.InputList<String>([ingress.id]),
      ),
    );

    final connection = command.remote.Connection(
      host: server.privateDns,
      user: 'ec2-user'.input(),
      privateKey: privateKey.input(),
      proxy: command.remote
          .ProxyConnection(
            host: proxy.publicIp,
            user: 'ec2-user'.input(),
            privateKey: privateKey.input(),
          )
          .input(),
    );

    final hostname = command.remote.Command(
      'hostname',
      args: command.remote.CommandArgs(
        connection: command.remote
            .Connection(
              host: connection.host,
              user: connection.user,
              privateKey: connection.privateKey,
              dialErrorLimit: (-1).input(),
              proxy: command.remote
                  .ProxyConnection(
                    host: proxy.publicIp,
                    user: 'ec2-user'.input(),
                    privateKey: privateKey.input(),
                    dialErrorLimit: (-1).input(),
                  )
                  .input(),
            )
            .input(),
        create: 'hostname'.input(),
      ),
      options: pulumi.CustomResourceOptions(
        customTimeouts: const pulumi.CustomTimeouts(create: '12m'),
      ),
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
        dependsOn: [hostname],
      ),
    );

    command.local.Command(
      'localPrivateIP',
      args: command.local.CommandArgs(
        create: server.privateIp.apply((ip) => 'echo $ip > private_ip.txt'),
        delete: 'rm private_ip.txt'.input(),
      ),
      options: pulumi.CustomResourceOptions(
        deleteBeforeReplace: true,
        dependsOn: [hostname],
      ),
    );

    final sizeFile = command.remote.CopyToRemote(
      'size',
      args: command.remote.CopyToRemoteArgs(
        connection: connection.input(),
        source: pulumi.FileAsset('./size.ts').input(),
        remotePath: 'size.ts'.input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [hostname]),
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

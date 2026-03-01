import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_command/pulumi_command.dart' as command;

class AnsibleWordpressStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  AnsibleWordpressStack() {
    final config = pulumi.Config();
    final publicKeyPath = config.require('publicKeyPath');
    final privateKeyPath = config.require('privateKeyPath');
    final dbInstanceSize = config.get('dbInstanceSize') ?? 'db.t3.small';
    final dbName = config.get('dbName') ?? 'wordpressdb';
    final dbUsername = config.get('dbUsername') ?? 'admin';
    final dbPassword = config.require('dbPassword');
    final ec2InstanceSize = config.get('ec2InstanceSize') ?? 't3.small';

    final availabilityZones = pulumi.Output(
      aws.getAvailabilityZones(aws.GetAvailabilityZonesArgs()),
    );
    final awsLinuxAmi = pulumi.Output(
      aws.ec2.getAmi(
        aws.ec2.GetAmiArgs(
          owners: ['amazon'].output(),
          filters: [
            aws.ec2.GetAmiFilter(
              name: 'name',
              values: ['amzn2-ami-hvm-*-x86_64-ebs'].output(),
            ),
          ].output(),
          mostRecent: true,
        ),
      ),
    );

    final publicKey = File(publicKeyPath).readAsStringSync();
    final privateKey = File(privateKeyPath).readAsStringSync();

    final prodVpc = aws.ec2.Vpc(
      'prod-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '10.192.0.0/16',
        enableDnsSupport: true,
        enableDnsHostnames: true,
        instanceTenancy: 'default',
      ),
    );

    final prodSubnetPublic1 = aws.ec2.Subnet(
      'prod-subnet-public-1',
      args: aws.ec2.SubnetArgs(
        vpcId: prodVpc.id,
        cidrBlock: '10.192.0.0/24',
        mapPublicIpOnLaunch: true,
        availabilityZone: availabilityZones.apply((azs) => azs.names[0]),
      ),
    );

    final prodSubnetPrivate1 = aws.ec2.Subnet(
      'prod-subnet-private-1',
      args: aws.ec2.SubnetArgs(
        vpcId: prodVpc.id,
        cidrBlock: '10.192.20.0/24',
        mapPublicIpOnLaunch: false,
        availabilityZone: availabilityZones.apply((azs) => azs.names[1]),
      ),
    );

    final prodSubnetPrivate2 = aws.ec2.Subnet(
      'prod-subnet-private-2',
      args: aws.ec2.SubnetArgs(
        vpcId: prodVpc.id,
        cidrBlock: '10.192.21.0/24',
        mapPublicIpOnLaunch: false,
        availabilityZone: availabilityZones.apply((azs) => azs.names[2]),
      ),
    );

    final prodIgw = aws.ec2.InternetGateway(
      'prod-igw',
      args: aws.ec2.InternetGatewayArgs(vpcId: prodVpc.id),
    );

    final prodPublicRt = aws.ec2.RouteTable(
      'prod-public-rt',
      args: aws.ec2.RouteTableArgs(
        vpcId: prodVpc.id,
        routes: [
          aws.ec2.RouteTableRoute(
            cidrBlock: '0.0.0.0/0',
            gatewayId: prodIgw.id,
          ),
        ].output(),
      ),
    );

    aws.ec2.RouteTableAssociation(
      'prod-rta-public-subnet-1',
      args: aws.ec2.RouteTableAssociationArgs(
        subnetId: prodSubnetPublic1.id,
        routeTableId: prodPublicRt.id,
      ),
    );

    final ec2AllowRule = aws.ec2.SecurityGroup(
      'ec2-allow-rule',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: prodVpc.id,
        ingress: [
          aws.ec2.SecurityGroupIngressArgs(
            description: 'HTTPS',
            fromPort: 443,
            toPort: 443,
            protocol: 'tcp',
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
          aws.ec2.SecurityGroupIngressArgs(
            description: 'HTTP',
            fromPort: 80,
            toPort: 80,
            protocol: 'tcp',
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
          aws.ec2.SecurityGroupIngressArgs(
            description: 'SSH',
            fromPort: 22,
            toPort: 22,
            protocol: 'tcp',
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
        ].output(),
        egress: [
          aws.ec2.SecurityGroupEgressArgs(
            fromPort: 0,
            toPort: 0,
            protocol: '-1',
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
        ].output(),
        tags: {'Name': 'allow ssh,http,https'}.output(),
      ),
    );

    final rdsAllowRule = aws.ec2.SecurityGroup(
      'rds-allow-rule',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: prodVpc.id,
        ingress: [
          aws.ec2.SecurityGroupIngressArgs(
            description: 'MySQL',
            fromPort: 3306,
            toPort: 3306,
            protocol: 'tcp',
            securityGroups: [ec2AllowRule.id].output(),
          ),
        ].output(),
        egress: [
          aws.ec2.SecurityGroupEgressArgs(
            fromPort: 0,
            toPort: 0,
            protocol: '-1',
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
        ].output(),
        tags: {'Name': 'allow ec2'}.output(),
      ),
    );

    final rdsSubnetGrp = aws.rds.SubnetGroup(
      'rds-subnet-grp',
      args: aws.rds.SubnetGroupArgs(
        subnetIds: [prodSubnetPrivate1.id, prodSubnetPrivate2.id].output(),
      ),
    );

    final wordpressdb = aws.rds.Instance(
      'wordpressdb',
      args: aws.rds.InstanceArgs(
        allocatedStorage: 10,
        engine: 'mysql',
        engineVersion: '5.7',
        instanceClass: dbInstanceSize,
        dbSubnetGroupName: rdsSubnetGrp.id,
        vpcSecurityGroupIds: [rdsAllowRule.id].output(),
        dbName: dbName,
        username: dbUsername,
        password: dbPassword,
        skipFinalSnapshot: true,
      ),
    );

    final wordpressKeypair = aws.ec2.KeyPair(
      'wordpress-keypair',
      args: aws.ec2.KeyPairArgs(publicKey: publicKey),
    );

    final wordpressInstance = aws.ec2.Instance(
      'wordpress-instance',
      args: aws.ec2.InstanceArgs(
        ami: awsLinuxAmi.apply((ami) => ami.id),
        instanceType: ec2InstanceSize,
        subnetId: prodSubnetPublic1.id,
        vpcSecurityGroupIds: [ec2AllowRule.id].output(),
        keyName: wordpressKeypair.id,
        tags: {'Name': 'Wordpress.web'}.output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [wordpressdb]),
    );

    final wordpressEip = aws.ec2.Eip(
      'wordpress-eip',
      args: aws.ec2.EipArgs(instance: wordpressInstance.id),
    );

    final renderPlaybookCmd = command.local.Command(
      'renderPlaybookCmd',
      args: command.local.CommandArgs(
        create: 'cat playbook.yml | envsubst > playbook_rendered.yml'.output(),
        environment: pulumi
            .Output
            .all([wordpressdb.endpoint])
            .apply((values) => <String, String>{
                  'DB_RDS': values[0] as String,
                  'DB_NAME': dbName,
                  'DB_USERNAME': dbUsername,
                  'DB_PASSWORD': dbPassword,
                }),
      ),
    );

    final updatePythonCmd = command.remote.Command(
      'updatePythonCmd',
      args: command.remote.CommandArgs(
        connection: wordpressEip.publicIp
            .apply((host) => command.remote.Connection(
                  host: host,
                  port: 22,
                  user: 'ec2-user',
                  privateKey: privateKey,
                )),
        create: '''
(sudo yum update -y || true);
(sudo yum install python35 -y);
(sudo yum install amazon-linux-extras -y)
'''
            .output(),
      ),
    );

    command.local.Command(
      'playAnsiblePlaybookCmd',
      args: command.local.CommandArgs(
        create: wordpressEip.publicIp.apply((publicIp) {
          return '''
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook \
-u ec2-user \
-i '$publicIp,' \
--private-key $privateKeyPath \
playbook_rendered.yml''';
        }),
      ),
      options: pulumi.CustomResourceOptions(
        dependsOn: [renderPlaybookCmd, updatePythonCmd],
      ),
    );

    url = wordpressEip.publicIp;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}


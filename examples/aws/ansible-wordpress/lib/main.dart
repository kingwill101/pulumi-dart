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

    final availabilityZones = pulumi.output(
      aws.index.getAvailabilityZones(aws.index.GetAvailabilityZonesArgs()),
    );
    final awsLinuxAmi = pulumi.output(
      aws.ec2.getAmi(
        aws.ec2.GetAmiArgs(
          owners: ['amazon'].input(),
          filters: [
            aws.ec2.GetAmiFilter(
              name: 'name'.input(),
              values: ['amzn2-ami-hvm-*-x86_64-ebs'].input(),
            ),
          ].input(),
          mostRecent: true.input(),
        ),
      ),
    );

    final publicKey = File(publicKeyPath).readAsStringSync();
    final privateKey = File(privateKeyPath).readAsStringSync();

    final prodVpc = aws.ec2.Vpc(
      'prod-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '10.192.0.0/16'.input(),
        enableDnsSupport: true.input(),
        enableDnsHostnames: true.input(),
        instanceTenancy: 'default'.input(),
      ),
    );

    final prodSubnetPublic1 = aws.ec2.Subnet(
      'prod-subnet-public-1',
      args: aws.ec2.SubnetArgs(
        vpcId: prodVpc.id,
        cidrBlock: '10.192.0.0/24'.input(),
        mapPublicIpOnLaunch: true.input(),
        availabilityZone: availabilityZones.apply((azs) => azs.names[0]),
      ),
    );

    final prodSubnetPrivate1 = aws.ec2.Subnet(
      'prod-subnet-private-1',
      args: aws.ec2.SubnetArgs(
        vpcId: prodVpc.id,
        cidrBlock: '10.192.20.0/24'.input(),
        mapPublicIpOnLaunch: false.input(),
        availabilityZone: availabilityZones.apply((azs) => azs.names[1]),
      ),
    );

    final prodSubnetPrivate2 = aws.ec2.Subnet(
      'prod-subnet-private-2',
      args: aws.ec2.SubnetArgs(
        vpcId: prodVpc.id,
        cidrBlock: '10.192.21.0/24'.input(),
        mapPublicIpOnLaunch: false.input(),
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
            cidrBlock: '0.0.0.0/0'.input(),
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
            description: 'HTTPS'.input(),
            fromPort: 443.input(),
            toPort: 443.input(),
            protocol: 'tcp'.input(),
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
          aws.ec2.SecurityGroupIngressArgs(
            description: 'HTTP'.input(),
            fromPort: 80.input(),
            toPort: 80.input(),
            protocol: 'tcp'.input(),
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
          aws.ec2.SecurityGroupIngressArgs(
            description: 'SSH'.input(),
            fromPort: 22.input(),
            toPort: 22.input(),
            protocol: 'tcp'.input(),
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
        ].output(),
        egress: [
          aws.ec2.SecurityGroupEgressArgs(
            fromPort: 0.input(),
            toPort: 0.input(),
            protocol: '-1'.input(),
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
            description: 'MySQL'.input(),
            fromPort: 3306.input(),
            toPort: 3306.input(),
            protocol: 'tcp'.input(),
            securityGroups: pulumi.Output.all<String>([
              ec2AllowRule.id,
            ]).apply<List<String>>((ids) => ids),
          ),
        ].output(),
        egress: [
          aws.ec2.SecurityGroupEgressArgs(
            fromPort: 0.input(),
            toPort: 0.input(),
            protocol: '-1'.input(),
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
        ].output(),
        tags: {'Name': 'allow ec2'}.output(),
      ),
    );

    final rdsSubnetGrp = aws.rds.SubnetGroup(
      'rds-subnet-grp',
      args: aws.rds.SubnetGroupArgs(
        subnetIds: pulumi.Output.all<String>([
          prodSubnetPrivate1.id,
          prodSubnetPrivate2.id,
        ]).apply<List<String>>((ids) => ids),
      ),
    );

    final wordpressdb = aws.rds.Instance(
      'wordpressdb',
      args: aws.rds.InstanceArgs(
        allocatedStorage: 10.input(),
        engine: 'mysql'.input(),
        engineVersion: '5.7'.input(),
        instanceClass: dbInstanceSize.input(),
        dbSubnetGroupName: rdsSubnetGrp.id,
        vpcSecurityGroupIds: pulumi.Output.all<String>([
          rdsAllowRule.id,
        ]).apply<List<String>>((ids) => ids),
        dbName: dbName.input(),
        username: dbUsername.input(),
        password: dbPassword.input(),
        skipFinalSnapshot: true.input(),
      ),
    );

    final wordpressKeypair = aws.ec2.KeyPair(
      'wordpress-keypair',
      args: aws.ec2.KeyPairArgs(publicKey: publicKey.input()),
    );

    final wordpressInstance = aws.ec2.Instance(
      'wordpress-instance',
      args: aws.ec2.InstanceArgs(
        ami: awsLinuxAmi.apply((ami) => ami.id),
        instanceType: ec2InstanceSize.input(),
        subnetId: prodSubnetPublic1.id,
        vpcSecurityGroupIds: pulumi.Output.all<String>([
          ec2AllowRule.id,
        ]).apply<List<String>>((ids) => ids),
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
        environment: pulumi.Output.all<String>([wordpressdb.endpoint])
            .apply<Map<String, String>>(
              (values) => <String, String>{
                'DB_RDS': values[0],
                'DB_NAME': dbName,
                'DB_USERNAME': dbUsername,
                'DB_PASSWORD': dbPassword,
              },
            )
            .input(),
      ),
    );

    final updatePythonCmd = command.remote.Command(
      'updatePythonCmd',
      args: command.remote.CommandArgs(
        connection: wordpressEip.publicIp.apply(
          (host) => command.remote.Connection(
            host: host.input(),
            port: 22.0.input(),
            user: 'ec2-user'.input(),
            privateKey: privateKey.input(),
          ),
        ),
        create:
            '''
(sudo yum update -y || true);
(sudo yum install python35 -y);
(sudo yum install amazon-linux-extras -y)
'''
                .input(),
      ),
    );

    command.local.Command(
      'playAnsiblePlaybookCmd',
      args: command.local.CommandArgs(
        create: wordpressEip.publicIp.apply<String>((publicIp) {
          return '''
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook \
-u ec2-user \
-i '$publicIp,' \
--private-key $privateKeyPath \
playbook_rendered.yml''';
        }).input(),
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

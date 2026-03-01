import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> appVpcId;
  late final pulumi.Output<List<String>> appVpcPrivateSubnetIds;
  late final pulumi.Output<List<String>> appVpcPublicSubnetIds;
  late final pulumi.Output<String> dataVpcId;
  late final pulumi.Output<List<String>> dataVpcPrivateSubnetIds;
  late final pulumi.Output<List<String>> dataVpcPublicSubnetIds;
  late final pulumi.Output<String> peeredSecurityGroupId;

  ExampleStack() {
    final config = pulumi.Config();
    final azCount = config.getNumber('azCount')?.toInt() ?? 2;
    final baseTags = <String, String>{
      'ManagedBy': 'Pulumi',
      'PulumiStack': pulumi.Deployment.instance.stackName,
    };

    final azNames = pulumi
        .output(
          aws
              .getAvailabilityZones(aws.GetAvailabilityZonesArgs(state: 'available'))
              .then((zones) => zones.names.take(azCount).toList()),
        )
        .apply<List<String>>((value) => (value as List).cast<String>());

    final appVpc = awsx.ec2.Vpc(
      'app-vpc',
      args: awsx.ec2.VpcArgs(
        cidrBlock: '172.28.0.0/16',
        availabilityZoneNames: azNames,
        tags: {
          ...baseTags,
          'Name': '${baseTags['ManagedBy']} App VPC',
        },
      ),
    );

    final dataVpc = awsx.ec2.Vpc(
      'data-vpc',
      args: awsx.ec2.VpcArgs(
        cidrBlock: '172.18.0.0/16',
        availabilityZoneNames: azNames,
        tags: {
          ...baseTags,
          'Name': '${baseTags['ManagedBy']} Data VPC',
        },
      ),
    );

    final peeredSg = aws.ec2.SecurityGroup(
      'data-app-peering-sg',
      args: aws.ec2.SecurityGroupArgs(
        description: 'Allows traffic from app VPC to data resources',
        vpcId: dataVpc.vpcId,
        ingress: [
          aws.ec2.SecurityGroupIngress(
            cidrBlocks: ['172.28.0.0/16'],
            fromPort: 0,
            toPort: 0,
            protocol: '-1',
          ),
        ],
        egress: [
          aws.ec2.SecurityGroupEgress(
            cidrBlocks: ['0.0.0.0/0'],
            fromPort: 0,
            toPort: 0,
            protocol: '-1',
          ),
        ],
        tags: {
          ...baseTags,
          'Name': '${baseTags['ManagedBy']} Peer App to Data',
        },
      ),
    );

    appVpcId = appVpc.vpcId;
    appVpcPrivateSubnetIds = appVpc.privateSubnetIds;
    appVpcPublicSubnetIds = appVpc.publicSubnetIds;
    dataVpcId = dataVpc.vpcId;
    dataVpcPrivateSubnetIds = dataVpc.privateSubnetIds;
    dataVpcPublicSubnetIds = dataVpc.publicSubnetIds;
    peeredSecurityGroupId = peeredSg.id;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('appVpcId', appVpcId),
      pulumi.OutputProperty('appVpcPrivateSubnetIds', appVpcPrivateSubnetIds),
      pulumi.OutputProperty('appVpcPublicSubnetIds', appVpcPublicSubnetIds),
      pulumi.OutputProperty('dataVpcId', dataVpcId),
      pulumi.OutputProperty('dataVpcPrivateSubnetIds', dataVpcPrivateSubnetIds),
      pulumi.OutputProperty('dataVpcPublicSubnetIds', dataVpcPublicSubnetIds),
      pulumi.OutputProperty('peeredSecurityGroupId', peeredSecurityGroupId),
    ];
  }
}

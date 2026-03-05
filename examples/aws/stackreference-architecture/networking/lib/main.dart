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
          aws.index.getAvailabilityZones(
            aws.index.GetAvailabilityZonesArgs(state: 'available'.input()),
          ),
        )
        .apply<List<String>>((zones) => zones.names.take(azCount).toList());

    final appVpc = awsx.ec2.Vpc(
      'app-vpc',
      args: awsx.ec2.VpcArgs(
        cidrBlock: '172.28.0.0/16'.input(),
        availabilityZoneNames: azNames,
        tags: {...baseTags, 'Name': '${baseTags['ManagedBy']} App VPC'}.input(),
      ),
    );

    final dataVpc = awsx.ec2.Vpc(
      'data-vpc',
      args: awsx.ec2.VpcArgs(
        cidrBlock: '172.18.0.0/16'.input(),
        availabilityZoneNames: azNames,
        tags: {
          ...baseTags,
          'Name': '${baseTags['ManagedBy']} Data VPC',
        }.input(),
      ),
    );

    final peeredSg = aws.ec2.SecurityGroup(
      'data-app-peering-sg',
      args: aws.ec2.SecurityGroupArgs(
        description: 'Allows traffic from app VPC to data resources'.input(),
        vpcId: dataVpc.vpcId.apply((v) => v!),
        ingress: [
          aws.ec2.SecurityGroupIngress(
            cidrBlocks: ['172.28.0.0/16'].input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            protocol: '-1'.input(),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            cidrBlocks: ['0.0.0.0/0'].input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            protocol: '-1'.input(),
          ),
        ].input(),
        tags: {
          ...baseTags,
          'Name': '${baseTags['ManagedBy']} Peer App to Data',
        }.input(),
      ),
    );

    appVpcId = appVpc.vpcId.apply((v) => v!);
    appVpcPrivateSubnetIds = appVpc.privateSubnetIds.apply((v) => v!);
    appVpcPublicSubnetIds = appVpc.publicSubnetIds.apply((v) => v!);
    dataVpcId = dataVpc.vpcId.apply((v) => v!);
    dataVpcPrivateSubnetIds = dataVpc.privateSubnetIds.apply((v) => v!);
    dataVpcPublicSubnetIds = dataVpc.publicSubnetIds.apply((v) => v!);
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

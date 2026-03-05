import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> pulumiVpcName;
  late final pulumi.Output<String> pulumiVpcId;
  late final pulumi.Output<int> pulumiVpcAzZones;
  late final pulumi.Output<String> pulumiVpcCidr;
  late final pulumi.Output<List<String>> pulumiVpcPrivateSubnetIds;
  late final pulumi.Output<List<String>> pulumiVpcPublicSubnetIds;
  late final pulumi.Output<Map<String, String>> pulumiVpcAwsTags;

  ExampleStack() {
    final config = pulumi.Config();
    final vpcName = config.require('vpc_name');
    final zoneNumber = config.requireNumber('zone_number').toInt();
    final vpcCidr = config.require('vpc_cidr');

    final baseTags = <String, String>{
      'Name': vpcName,
      'availability_zones_used': zoneNumber.toString(),
      'cidr_block': vpcCidr,
      'crosswalk': 'yes',
      'demo': 'true',
      'pulumi:Project': pulumi.Deployment.instance.projectName,
      'pulumi:Stack': pulumi.Deployment.instance.stackName,
      'cost_center': '1234',
    };

    final vpc = awsx.ec2.Vpc(
      vpcName,
      args: awsx.ec2.VpcArgs(
        cidrBlock: vpcCidr.input(),
        numberOfAvailabilityZones: zoneNumber.input(),
        tags: baseTags.input(),
      ),
    );

    pulumiVpcName = pulumi.Output.create(vpcName);
    pulumiVpcId = vpc.vpcId.apply((v) => v!);
    pulumiVpcAzZones = pulumi.Output.create(zoneNumber);
    pulumiVpcCidr = pulumi.Output.create(vpcCidr);
    pulumiVpcPrivateSubnetIds = vpc.privateSubnetIds.apply((v) => v!);
    pulumiVpcPublicSubnetIds = vpc.publicSubnetIds.apply((v) => v!);
    pulumiVpcAwsTags = pulumi.Output.create(baseTags);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('pulumi_vpc_name', pulumiVpcName),
      pulumi.OutputProperty('pulumi_vpc_id', pulumiVpcId),
      pulumi.OutputProperty('pulumi_vpc_az_zones', pulumiVpcAzZones),
      pulumi.OutputProperty('pulumi_vpc_cidr', pulumiVpcCidr),
      pulumi.OutputProperty(
        'pulumi_vpc_private_subnet_ids',
        pulumiVpcPrivateSubnetIds,
      ),
      pulumi.OutputProperty(
        'pulumi_vpc_public_subnet_ids',
        pulumiVpcPublicSubnetIds,
      ),
      pulumi.OutputProperty('pulumi_vpc_aws_tags', pulumiVpcAwsTags),
    ];
  }
}

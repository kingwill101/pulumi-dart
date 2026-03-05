import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_awsx/ec2.dart' as awsx_ec2;

class VpcNodejsVpcSubnetsWithTagsStack extends pulumi.Stack {
  late final pulumi.Output<String?> vpcId;
  late final pulumi.Output<List<String>?> publicSubnetIds;
  late final pulumi.Output<List<String>?> privateSubnetIds;

  VpcNodejsVpcSubnetsWithTagsStack() {
    final myVpc = awsx.ec2.Vpc(
      'awsx-dart-subnets-with-tags',
      args: awsx.ec2.VpcArgs(
        tags: {'isoverridden': 'false'}.input(),
        subnetSpecs: [
          awsx.ec2.SubnetSpec(
            type: awsx_ec2.SubnetType.valuePublic.input(),
            cidrMask: 22.input(),
            tags: {
              'isoverridden': 'true',
              'custom_tag_subnet_type': 'subnet_public',
              'custom_tag_one': '1',
            }.input(),
          ),
          awsx.ec2.SubnetSpec(
            type: awsx_ec2.SubnetType.valuePrivate.input(),
            cidrMask: 21.input(),
            tags: {
              'custom_tag_subnet_type': 'subnet_private',
              'custom_tag_two': '2',
              'custom_tag_three': '3',
            }.input(),
          ),
        ].input(),
      ),
    );

    vpcId = myVpc.vpcId.apply((v) => v!);
    publicSubnetIds = myVpc.publicSubnetIds.apply((v) => v!);
    privateSubnetIds = myVpc.privateSubnetIds.apply((v) => v!);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('vpcId', vpcId),
      pulumi.OutputProperty('publicSubnetIds', publicSubnetIds),
      pulumi.OutputProperty('privateSubnetIds', privateSubnetIds),
    ];
  }
}

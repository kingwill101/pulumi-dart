import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_awsx/ec2.dart' as awsx_ec2;

class VpcNodejsVpcIpv6AssignmentStack extends pulumi.Stack {
  late final pulumi.Output<List<Map<String, dynamic>>?> subnets;

  VpcNodejsVpcIpv6AssignmentStack() {
    final vpc = awsx.ec2.Vpc(
      'test-vpc',
      args: awsx.ec2.VpcArgs(
        assignGeneratedIpv6CidrBlock: true.input(),
        subnetStrategy: awsx_ec2.SubnetAllocationStrategy.valueAuto.input(),
        subnetSpecs: [
          awsx.ec2.SubnetSpec(type: awsx_ec2.SubnetType.valuePrivate.input()),
          awsx.ec2.SubnetSpec(type: awsx_ec2.SubnetType.valuePublic.input()),
        ].input(),
      ),
    );

    subnets = vpc.subnets;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('subnets', subnets)];
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_awsx/ec2.dart' as awsx_ec2;

class VpcNodejsVpcMultipleSimilarSubnetTypesStack extends pulumi.Stack {
  late final pulumi.Output<String?> vpcId;
  late final pulumi.Output<List<String>?> publicSubnetIds;
  late final pulumi.Output<List<String>?> privateSubnetIds;
  late final pulumi.Output<List<String>?> isolatedSubnetIds;

  VpcNodejsVpcMultipleSimilarSubnetTypesStack() {
    final myVpc = awsx.ec2.Vpc(
      'awsx-dart-multiple-subnets',
      args: awsx.ec2.VpcArgs(
        subnetSpecs: [
          awsx.ec2.SubnetSpec(
            type: awsx_ec2.SubnetType.valuePublic.input(),
            cidrMask: 22.input(),
          ),
          awsx.ec2.SubnetSpec(
            type: awsx_ec2.SubnetType.valuePrivate.input(),
            cidrMask: 21.input(),
          ),
          awsx.ec2.SubnetSpec(
            type: awsx_ec2.SubnetType.valueIsolated.input(),
            cidrMask: 24.input(),
            name: 'db'.input(),
          ),
          awsx.ec2.SubnetSpec(
            type: awsx_ec2.SubnetType.valueIsolated.input(),
            cidrMask: 24.input(),
            name: 'redis'.input(),
          ),
        ].input(),
      ),
    );

    vpcId = myVpc.vpcId;
    publicSubnetIds = myVpc.publicSubnetIds;
    privateSubnetIds = myVpc.privateSubnetIds;
    isolatedSubnetIds = myVpc.isolatedSubnetIds;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('vpcId', vpcId),
      pulumi.OutputProperty('publicSubnetIds', publicSubnetIds),
      pulumi.OutputProperty('privateSubnetIds', privateSubnetIds),
      pulumi.OutputProperty('isolatedSubnetIds', isolatedSubnetIds),
    ];
  }
}

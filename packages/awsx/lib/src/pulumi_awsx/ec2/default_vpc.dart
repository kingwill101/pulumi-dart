import 'package:pulumi/pulumi.dart';

/// Pseudo resource representing the default VPC and associated subnets for an account and region. This does not create any resources. This will be replaced with `getDefaultVpc` in the future.
class DefaultVpc extends ComponentResource {
  late final Output<List<String>> privateSubnetIds;
  late final Output<List<String>> publicSubnetIds;

  /// The VPC ID for the default VPC
  late final Output<String> vpcId;

  DefaultVpc(
    String name, {
    ComponentResourceOptions? options,
  }) : super(
          'awsx:ec2:DefaultVpc',
          name,
          null,
          options ?? ComponentResourceOptions(),
        ) {
    this.privateSubnetIds = registerOutput<List<String>>('privateSubnetIds');
    this.publicSubnetIds = registerOutput<List<String>>('publicSubnetIds');
    this.vpcId = registerOutput<String>('vpcId');
  }
}

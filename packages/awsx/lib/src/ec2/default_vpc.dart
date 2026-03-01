import 'package:pulumi/pulumi.dart' as pulumi;

/// Pseudo resource representing the default VPC and associated subnets for an account and region. This does not create any resources. This will be replaced with `getDefaultVpc` in the future.
class DefaultVpc extends pulumi.ComponentResource {
  late final pulumi.Output<List<String>> privateSubnetIds;
  late final pulumi.Output<List<String>> publicSubnetIds;

  /// The VPC ID for the default VPC
  late final pulumi.Output<String> vpcId;

  /// Creates a new [DefaultVpc].
  /// [name] The Pulumi resource name.
  /// [options] Resource options controlling this resource's behavior.
  DefaultVpc(String name, {pulumi.ComponentResourceOptions? options})
    : super(
        'awsx:ec2:DefaultVpc',
        name,
        null,
        options ?? pulumi.ComponentResourceOptions(),
      ) {
    this.privateSubnetIds = registerOutput<List<String>>('privateSubnetIds');
    this.publicSubnetIds = registerOutput<List<String>>('publicSubnetIds');
    this.vpcId = registerOutput<String>('vpcId');
  }
}

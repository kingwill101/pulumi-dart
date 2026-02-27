import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_block_public_access_options_timeouts/vpc_block_public_access_options_timeouts.dart';
import 'vpc_block_public_access_options_args.dart';

/// Resource for managing an AWS VPC Block Public Access Options.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Block Public Access Options using the `aws.getRegion`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcBlockPublicAccessOptions:VpcBlockPublicAccessOptions example us-east-1
/// ```
class VpcBlockPublicAccessOptions extends pulumi.CustomResource {
  /// The AWS account id to which these options apply.
  late final pulumi.Output<String> awsAccountId;

  /// The AWS region to which these options apply.
  late final pulumi.Output<String> awsRegion;

  /// Block mode. Needs to be one of `block-bidirectional`, `block-ingress`, `off`. If this resource is deleted, then this value will be set to `off` in the AWS account and region.
  late final pulumi.Output<String> internetGatewayBlockMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<VpcBlockPublicAccessOptionsTimeouts?> timeouts;

  VpcBlockPublicAccessOptions(
    String name, {
    VpcBlockPublicAccessOptionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcBlockPublicAccessOptions:VpcBlockPublicAccessOptions',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.awsRegion = registerOutput<String>('awsRegion');
    this.internetGatewayBlockMode =
        registerOutput<String>('internetGatewayBlockMode');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<VpcBlockPublicAccessOptionsTimeouts?>('timeouts');
  }
}

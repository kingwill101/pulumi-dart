import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_vpclattice_args.dart';

/// Resource for managing an AWS VPC Lattice Resource Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Resource Policy using the `resource_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/resourcePolicy:ResourcePolicy example rft-8012925589
/// ```
class ResourcePolicyVpclattice extends pulumi.CustomResource {
  /// An IAM policy. The policy string in JSON must not contain newlines or blank lines.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  late final pulumi.Output<String> resourceArn;

  ResourcePolicyVpclattice(
    String name, {
    ResourcePolicyVpclatticeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}

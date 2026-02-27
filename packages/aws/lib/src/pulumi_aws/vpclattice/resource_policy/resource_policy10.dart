import 'package:pulumi/pulumi.dart';
import 'resource_policy_args10.dart';

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
class ResourcePolicy10 extends CustomResource {
  /// An IAM policy. The policy string in JSON must not contain newlines or blank lines.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  late final Output<String> resourceArn;

  ResourcePolicy10(
    String name, {
    ResourcePolicyArgs10? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/resourcePolicy:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}

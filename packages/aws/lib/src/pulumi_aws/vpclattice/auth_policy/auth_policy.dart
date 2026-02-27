import 'package:pulumi/pulumi.dart';
import 'auth_policy_args.dart';

/// Resource for managing an AWS VPC Lattice Auth Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Auth Policy using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/authPolicy:AuthPolicy example abcd-12345678
/// ```
class AuthPolicy extends CustomResource {
  /// The auth policy. The policy string in JSON must not contain newlines or blank lines.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  late final Output<String> resourceIdentifier;

  /// The state of the auth policy. The auth policy is only active when the auth type is set to `AWS_IAM`. If you provide a policy, then authentication and authorization decisions are made based on this policy and the client's IAM policy. If the Auth type is `NONE`, then, any auth policy you provide will remain inactive.
  late final Output<String?> state;

  AuthPolicy(
    String name, {
    AuthPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/authPolicy:AuthPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceIdentifier = registerOutput<String>('resourceIdentifier');
    this.state = registerOutput<String?>('state');
  }
}

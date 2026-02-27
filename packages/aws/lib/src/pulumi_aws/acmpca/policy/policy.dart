import 'package:pulumi/pulumi.dart';
import 'policy_args.dart';

/// Attaches a resource based policy to a private CA.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the ACM PCA certificate authority.
///
///
/// Using `pulumi import`, import `aws.acmpca.Policy` using the `resource_arn` value. For example:
///
/// ```sh
/// $ pulumi import aws:acmpca/policy:Policy example arn:aws:acm-pca:us-east-1:123456789012:certificate-authority/12345678-1234-1234-1234-123456789012
/// ```
class Policy extends CustomResource {
  /// JSON-formatted IAM policy to attach to the specified private CA resource.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the private CA to associate with the policy.
  late final Output<String> resourceArn;

  Policy(
    String name, {
    PolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:acmpca/policy:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}

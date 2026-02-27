import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_policy_args.dart';

/// Provides a resource to manage AWS Secrets Manager secret policy.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Secrets Manager secret.
///
///
/// Using `pulumi import`, import `aws.secretsmanager.SecretPolicy` using the secret Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/secretPolicy:SecretPolicy example arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456
/// ```
class SecretPolicy extends pulumi.CustomResource {
  /// Makes an optional API call to Zelkova to validate the Resource Policy to prevent broad access to your secret.
  late final pulumi.Output<bool?> blockPublicPolicy;

  /// Valid JSON document representing a [resource policy](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). Unlike `aws.secretsmanager.Secret`, where `policy` can be set to `"{}"` to delete the policy, `"{}"` is not a valid policy since `policy` is required.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Secret ARN.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> secretArn;

  SecretPolicy(
    String name, {
    SecretPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secretPolicy:SecretPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blockPublicPolicy = registerOutput<bool?>('blockPublicPolicy');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.secretArn = registerOutput<String>('secretArn');
  }
}

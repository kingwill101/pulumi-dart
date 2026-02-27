import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_identity_policy_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Email Identity Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Email Identity Policy using the `email_identity` and `policy_name` separated by `|`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/emailIdentityPolicy:EmailIdentityPolicy example example_email_identity|example_policy_name
/// ```
class EmailIdentityPolicy extends pulumi.CustomResource {
  /// The email identity.
  late final pulumi.Output<String> emailIdentity;

  /// The text of the policy in JSON format.
  late final pulumi.Output<String> policy;

  /// The name of the policy.
  late final pulumi.Output<String> policyName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  EmailIdentityPolicy(
    String name, {
    EmailIdentityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/emailIdentityPolicy:EmailIdentityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.emailIdentity = registerOutput<String>('emailIdentity');
    this.policy = registerOutput<String>('policy');
    this.policyName = registerOutput<String>('policyName');
    this.region = registerOutput<String>('region');
  }
}

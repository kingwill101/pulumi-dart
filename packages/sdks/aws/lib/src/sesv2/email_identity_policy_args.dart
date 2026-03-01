// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_email_identity_policy_email_identity_policy_args_doc}
/// The set of arguments for EmailIdentityPolicy.
/// {@endtemplate}
/// {@macro pulumi_sesv2_email_identity_policy_email_identity_policy_args_doc}
class EmailIdentityPolicyArgs {
  /// The email identity.
  final pulumi.Input<String> emailIdentity;
  /// The text of the policy in JSON format.
  final pulumi.Input<String> policy;
  /// The name of the policy.
  final pulumi.Input<String> policyName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EmailIdentityPolicyArgs].
  /// [emailIdentity] The email identity.
  /// [policy] The text of the policy in JSON format.
  /// [policyName] The name of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EmailIdentityPolicyArgs({
    required pulumi.Output<String> emailIdentity,
    required pulumi.Output<String> policy,
    required pulumi.Output<String> policyName,
    pulumi.Output<String>? region,
  }) :
      emailIdentity = pulumi.Input.asInput<String>(emailIdentity),
      policy = pulumi.Input.asInput<String>(policy),
      policyName = pulumi.Input.asInput<String>(policyName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailIdentity': emailIdentity,
      'policy': policy,
      'policyName': policyName,
      'region': ?region,
    };
  }

  factory EmailIdentityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EmailIdentityPolicyArgs(
      emailIdentity: pulumi.Output.create<String>(map['emailIdentity'] as String),
      policy: pulumi.Output.create<String>(map['policy'] as String),
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


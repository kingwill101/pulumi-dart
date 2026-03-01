// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailIdentityPolicy resources.
class EmailIdentityPolicyState {
  /// The email identity.
  final pulumi.Input<String>? emailIdentity;
  /// The text of the policy in JSON format.
  final pulumi.Input<String>? policy;
  /// The name of the policy.
  final pulumi.Input<String>? policyName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EmailIdentityPolicyState].
  /// [emailIdentity] The email identity.
  /// [policy] The text of the policy in JSON format.
  /// [policyName] The name of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EmailIdentityPolicyState({
    pulumi.Output<String>? emailIdentity,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? policyName,
    pulumi.Output<String>? region,
  }) :
      emailIdentity = pulumi.Input.asOptionalInput<String>(emailIdentity),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailIdentity': ?emailIdentity,
      'policy': ?policy,
      'policyName': ?policyName,
      'region': ?region,
    };
  }

  factory EmailIdentityPolicyState.fromMap(Map<String, dynamic> map) {
    return EmailIdentityPolicyState(
      emailIdentity: map['emailIdentity'] == null ? null : pulumi.Output.create<String>(map['emailIdentity'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


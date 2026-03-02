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
    this.emailIdentity,
    this.policy,
    this.policyName,
    this.region,
  });

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
      emailIdentity: map['emailIdentity'] == null ? null : ((map['emailIdentity'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      policyName: map['policyName'] == null ? null : ((map['policyName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}


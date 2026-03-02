// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IdentityPolicy resources.
class IdentityPolicyState {
  /// Name or Amazon Resource Name (ARN) of the SES Identity.
  final pulumi.Input<String>? identity;
  /// Name of the policy.
  final pulumi.Input<String>? name;
  /// JSON string of the policy.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [IdentityPolicyState].
  /// [identity] Name or Amazon Resource Name (ARN) of the SES Identity.
  /// [name] Name of the policy.
  /// [policy] JSON string of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  IdentityPolicyState({
    this.identity,
    this.name,
    this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'name': ?name,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory IdentityPolicyState.fromMap(Map<String, dynamic> map) {
    return IdentityPolicyState(
      identity: map['identity'] == null ? null : ((map['identity'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}


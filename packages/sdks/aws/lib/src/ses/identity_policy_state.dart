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
    pulumi.Output<String>? identity,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
  }) :
      identity = pulumi.Input.asOptionalInput<String>(identity),
      name = pulumi.Input.asOptionalInput<String>(name),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      identity: map['identity'] == null ? null : pulumi.Output.create<String>(map['identity'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


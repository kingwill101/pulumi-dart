// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AgentcoreResourcePolicy resources.
class AgentcoreResourcePolicyState {
  /// Resource policy definition
  final pulumi.Input<String?>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the resource for which to create or update the resource policy.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? resourceArn;

  /// Creates a new [AgentcoreResourcePolicyState].
  /// [policy] Resource policy definition
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the resource for which to create or update the resource policy.
  const AgentcoreResourcePolicyState({
    this.policy,
    this.region,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'resourceArn': ?resourceArn,
    };
  }

  factory AgentcoreResourcePolicyState.fromMap(Map<String, dynamic> map) {
    return AgentcoreResourcePolicyState(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Smsvoicev2ResourcePolicy resources.
class Smsvoicev2ResourcePolicyState {
  /// Resource-based policy document in JSON format.
  final pulumi.Input<String?>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html#cli-configure-options-region). Defaults to the region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the End User Messaging SMS resource — phone number, opt-out list, pool, or sender ID — to attach the policy to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? resourceArn;

  /// Creates a new [Smsvoicev2ResourcePolicyState].
  /// [policy] Resource-based policy document in JSON format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html#cli-configure-options-region). Defaults to the region set in the provider configuration.
  /// [resourceArn] ARN of the End User Messaging SMS resource — phone number, opt-out list, pool, or sender ID — to attach the policy to.
  const Smsvoicev2ResourcePolicyState({
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

  factory Smsvoicev2ResourcePolicyState.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2ResourcePolicyState(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

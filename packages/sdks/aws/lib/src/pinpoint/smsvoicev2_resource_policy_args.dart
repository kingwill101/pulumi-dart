// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_smsvoicev2_resource_policy_smsvoicev2_resource_policy_args_doc}
/// The set of arguments for Smsvoicev2ResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_smsvoicev2_resource_policy_smsvoicev2_resource_policy_args_doc}
class Smsvoicev2ResourcePolicyArgs {
  /// Resource-based policy document in JSON format.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html#cli-configure-options-region). Defaults to the region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the End User Messaging SMS resource — phone number, opt-out list, pool, or sender ID — to attach the policy to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceArn;

  /// Creates a new [Smsvoicev2ResourcePolicyArgs].
  /// [policy] Resource-based policy document in JSON format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html#cli-configure-options-region). Defaults to the region set in the provider configuration.
  /// [resourceArn] ARN of the End User Messaging SMS resource — phone number, opt-out list, pool, or sender ID — to attach the policy to.
  const Smsvoicev2ResourcePolicyArgs({
    required this.policy,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'region': ?region,
      'resourceArn': resourceArn,
    };
  }

  factory Smsvoicev2ResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2ResourcePolicyArgs(
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}

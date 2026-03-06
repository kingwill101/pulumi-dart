// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_control_access_point_policy_access_point_policy_args_doc}
/// The set of arguments for AccessPointPolicy.
/// {@endtemplate}
/// {@macro pulumi_s3_control_access_point_policy_access_point_policy_args_doc}
class AccessPointPolicyArgs {
  /// The ARN of the access point that you want to associate with the specified policy.
  final pulumi.Input<String> accessPointArn;
  /// The policy that you want to apply to the specified access point.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AccessPointPolicyArgs].
  /// [accessPointArn] The ARN of the access point that you want to associate with the specified policy.
  /// [policy] The policy that you want to apply to the specified access point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AccessPointPolicyArgs({
    required this.accessPointArn,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointArn': accessPointArn,
      'policy': policy,
      'region': ?region,
    };
  }

  factory AccessPointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccessPointPolicyArgs(
      accessPointArn: pulumi.Input.fromValue(map['accessPointArn'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


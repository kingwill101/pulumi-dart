// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_batch_get_scheduling_policy_get_scheduling_policy_args_doc}
/// Arguments for getSchedulingPolicy.
/// {@endtemplate}
/// {@macro pulumi_batch_get_scheduling_policy_get_scheduling_policy_args_doc}
class GetSchedulingPolicyArgs {
  /// ARN of the scheduling policy.
  final pulumi.Input<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSchedulingPolicyArgs].
  /// [arn] ARN of the scheduling policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags
  GetSchedulingPolicyArgs({required this.arn, this.region, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'region': ?region, 'tags': ?tags};
  }

  factory GetSchedulingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSchedulingPolicyArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduling_policy_fair_share_policy.dart';

/// {@template pulumi_batch_scheduling_policy_scheduling_policy_args_doc}
/// The set of arguments for SchedulingPolicy.
/// {@endtemplate}
/// {@macro pulumi_batch_scheduling_policy_scheduling_policy_args_doc}
class SchedulingPolicyArgs {
  final pulumi.Input<SchedulingPolicyFairSharePolicy>? fairSharePolicy;
  /// Specifies the name of the scheduling policy.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SchedulingPolicyArgs].
  /// [fairSharePolicy] Optional.
  /// [name] Specifies the name of the scheduling policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const SchedulingPolicyArgs({
    this.fairSharePolicy,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fairSharePolicy': ?pulumi.Input.mapOptionalInputValue<SchedulingPolicyFairSharePolicy, Map<String, dynamic>>(fairSharePolicy, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory SchedulingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SchedulingPolicyArgs(
      fairSharePolicy: (() { final guardedValue = map['fairSharePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchedulingPolicyFairSharePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}


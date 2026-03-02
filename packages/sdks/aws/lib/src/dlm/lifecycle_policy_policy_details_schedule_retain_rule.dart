// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyPolicyDetailsScheduleRetainRule {
  final pulumi.Input<int>? count;
  final pulumi.Input<int>? interval;
  final pulumi.Input<String>? intervalUnit;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleRetainRule].
  /// [count] Optional.
  /// [interval] Optional.
  /// [intervalUnit] Optional.
  LifecyclePolicyPolicyDetailsScheduleRetainRule({
    this.count,
    this.interval,
    this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'interval': ?interval,
      'intervalUnit': ?intervalUnit,
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleRetainRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleRetainRule(
      count: map['count'] == null ? null : (map['count'] as int).input(),
      interval: map['interval'] == null ? null : (map['interval'] as int).input(),
      intervalUnit: map['intervalUnit'] == null ? null : (map['intervalUnit'] as String).input(),
    );
  }
}


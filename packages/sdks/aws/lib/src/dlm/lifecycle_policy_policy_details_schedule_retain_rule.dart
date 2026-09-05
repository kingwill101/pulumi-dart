// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyPolicyDetailsScheduleRetainRule {
  final pulumi.Input<int?>? count;
  final pulumi.Input<int?>? interval;
  final pulumi.Input<String?>? intervalUnit;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleRetainRule].
  /// [count] Optional.
  /// [interval] Optional.
  /// [intervalUnit] Optional.
  const LifecyclePolicyPolicyDetailsScheduleRetainRule({
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
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      intervalUnit: (() { final guardedValue = map['intervalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

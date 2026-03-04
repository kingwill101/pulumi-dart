// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule {
  final pulumi.Input<int> interval;
  final pulumi.Input<String> intervalUnit;

  /// Creates a new [LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule].
  /// [interval] Required.
  /// [intervalUnit] Required.
  LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule({
    required this.interval,
    required this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': interval,
      'intervalUnit': intervalUnit,
    };
  }

  factory LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule(
      interval: pulumi.Input.fromValue(map['interval'] as int),
      intervalUnit: pulumi.Input.fromValue(map['intervalUnit'] as String),
    );
  }
}

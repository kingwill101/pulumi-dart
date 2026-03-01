// ignore_for_file: unused_element, unnecessary_cast


class LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule {
  final int interval;
  final String intervalUnit;

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

  factory LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule(
      interval: map['interval'] as int,
      intervalUnit: map['intervalUnit'] as String,
    );
  }
}


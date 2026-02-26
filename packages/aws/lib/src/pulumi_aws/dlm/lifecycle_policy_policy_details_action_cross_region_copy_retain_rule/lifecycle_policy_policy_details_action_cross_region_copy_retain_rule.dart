// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule {
  final int interval;
  final String intervalUnit;

  LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule({
    required this.interval,
    required this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['interval'] = interval;
    map['intervalUnit'] = intervalUnit;
    return map;
  }

  factory LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRule(
      interval: map['interval'] as int,
      intervalUnit: map['intervalUnit'] as String,
    );
  }
}

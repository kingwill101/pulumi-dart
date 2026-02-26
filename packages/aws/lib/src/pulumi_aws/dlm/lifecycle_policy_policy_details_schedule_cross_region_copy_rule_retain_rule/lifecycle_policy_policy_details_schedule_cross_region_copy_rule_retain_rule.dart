// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule {
  final int interval;
  final String intervalUnit;

  LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule({
    required this.interval,
    required this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['interval'] = interval;
    map['intervalUnit'] = intervalUnit;
    return map;
  }

  factory LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule(
      interval: map['interval'] as int,
      intervalUnit: map['intervalUnit'] as String,
    );
  }
}

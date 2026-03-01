// ignore_for_file: unused_element, unnecessary_cast


class LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule {
  final int interval;
  final String intervalUnit;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule].
  /// [interval] Required.
  /// [intervalUnit] Required.
  LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule({
    required this.interval,
    required this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': interval,
      'intervalUnit': intervalUnit,
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule(
      interval: map['interval'] as int,
      intervalUnit: map['intervalUnit'] as String,
    );
  }
}


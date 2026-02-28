// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule {
  final int interval;
  final String intervalUnit;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule].
  /// [interval] Required.
  /// [intervalUnit] Required.
  LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule({
    required this.interval,
    required this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['interval'] = interval;
    map['intervalUnit'] = intervalUnit;
    return map;
  }

  factory LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule(
      interval: map['interval'] as int,
      intervalUnit: map['intervalUnit'] as String,
    );
  }
}

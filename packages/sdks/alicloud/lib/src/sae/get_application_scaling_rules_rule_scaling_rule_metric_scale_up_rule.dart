// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationScalingRulesRuleScalingRuleMetricScaleUpRule {
  /// Whether shrinkage is prohibited. The values are described as follows:
  final bool disabled;
  /// Expansion cooling time.
  final int stabilizationWindowSeconds;
  /// Flexible expansion step. The maximum number of instances per unit time.
  final int step;

  /// Creates a new [GetApplicationScalingRulesRuleScalingRuleMetricScaleUpRule].
  /// [disabled] Whether shrinkage is prohibited. The values are described as follows:
  /// [stabilizationWindowSeconds] Expansion cooling time.
  /// [step] Flexible expansion step. The maximum number of instances per unit time.
  GetApplicationScalingRulesRuleScalingRuleMetricScaleUpRule({
    required this.disabled,
    required this.stabilizationWindowSeconds,
    required this.step,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'stabilizationWindowSeconds': stabilizationWindowSeconds,
      'step': step,
    };
  }

  factory GetApplicationScalingRulesRuleScalingRuleMetricScaleUpRule.fromMap(Map<String, dynamic> map) {
    return GetApplicationScalingRulesRuleScalingRuleMetricScaleUpRule(
      disabled: map['disabled'] as bool,
      stabilizationWindowSeconds: map['stabilizationWindowSeconds'] as int,
      step: map['step'] as int,
    );
  }
}


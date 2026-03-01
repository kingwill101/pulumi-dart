// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationScalingRulesRuleScalingRuleMetricScaleDownRule {
  /// Whether shrinkage is prohibited.
  final bool disabled;
  /// Shrinkage cooling time.
  final int stabilizationWindowSeconds;
  /// Elastic shrinkage step. The maximum number of instances per unit time.
  final int step;

  /// Creates a new [GetApplicationScalingRulesRuleScalingRuleMetricScaleDownRule].
  /// [disabled] Whether shrinkage is prohibited.
  /// [stabilizationWindowSeconds] Shrinkage cooling time.
  /// [step] Elastic shrinkage step. The maximum number of instances per unit time.
  GetApplicationScalingRulesRuleScalingRuleMetricScaleDownRule({
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

  factory GetApplicationScalingRulesRuleScalingRuleMetricScaleDownRule.fromMap(Map<String, dynamic> map) {
    return GetApplicationScalingRulesRuleScalingRuleMetricScaleDownRule(
      disabled: map['disabled'] as bool,
      stabilizationWindowSeconds: map['stabilizationWindowSeconds'] as int,
      step: map['step'] as int,
    );
  }
}


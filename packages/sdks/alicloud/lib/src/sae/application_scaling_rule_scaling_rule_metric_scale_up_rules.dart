// ignore_for_file: unused_element, unnecessary_cast


class ApplicationScalingRuleScalingRuleMetricScaleUpRules {
  /// Whether shrinkage is prohibited.
  final bool? disabled;
  /// Cooling time for expansion or contraction. Valid values: `0` to `3600`. Unit: seconds. The default is `0` seconds.
  final int? stabilizationWindowSeconds;
  /// Elastic expansion or contraction step size. the maximum number of instances to be scaled in per unit time.
  final int? step;

  /// Creates a new [ApplicationScalingRuleScalingRuleMetricScaleUpRules].
  /// [disabled] Whether shrinkage is prohibited.
  /// [stabilizationWindowSeconds] Cooling time for expansion or contraction. Valid values: `0` to `3600`. Unit: seconds. The default is `0` seconds.
  /// [step] Elastic expansion or contraction step size. the maximum number of instances to be scaled in per unit time.
  ApplicationScalingRuleScalingRuleMetricScaleUpRules({
    this.disabled,
    this.stabilizationWindowSeconds,
    this.step,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'stabilizationWindowSeconds': ?stabilizationWindowSeconds,
      'step': ?step,
    };
  }

  factory ApplicationScalingRuleScalingRuleMetricScaleUpRules.fromMap(Map<String, dynamic> map) {
    return ApplicationScalingRuleScalingRuleMetricScaleUpRules(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      stabilizationWindowSeconds: map['stabilizationWindowSeconds'] == null ? null : map['stabilizationWindowSeconds'] as int,
      step: map['step'] == null ? null : map['step'] as int,
    );
  }
}


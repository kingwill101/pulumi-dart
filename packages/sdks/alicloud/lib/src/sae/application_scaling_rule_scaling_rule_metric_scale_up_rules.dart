// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationScalingRuleScalingRuleMetricScaleUpRules {
  /// Whether shrinkage is prohibited.
  final pulumi.Input<bool>? disabled;
  /// Cooling time for expansion or contraction. Valid values: `0` to `3600`. Unit: seconds. The default is `0` seconds.
  final pulumi.Input<int>? stabilizationWindowSeconds;
  /// Elastic expansion or contraction step size. the maximum number of instances to be scaled in per unit time.
  final pulumi.Input<int>? step;

  /// Creates a new [ApplicationScalingRuleScalingRuleMetricScaleUpRules].
  /// [disabled] Whether shrinkage is prohibited.
  /// [stabilizationWindowSeconds] Cooling time for expansion or contraction. Valid values: `0` to `3600`. Unit: seconds. The default is `0` seconds.
  /// [step] Elastic expansion or contraction step size. the maximum number of instances to be scaled in per unit time.
  const ApplicationScalingRuleScalingRuleMetricScaleUpRules({
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
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stabilizationWindowSeconds: (() { final guardedValue = map['stabilizationWindowSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      step: (() { final guardedValue = map['step']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


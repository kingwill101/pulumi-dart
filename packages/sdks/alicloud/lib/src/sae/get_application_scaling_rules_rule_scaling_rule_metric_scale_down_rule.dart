// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationScalingRulesRuleScalingRuleMetricScaleDownRule {
  /// Whether shrinkage is prohibited.
  final pulumi.Input<bool> disabled;

  /// Shrinkage cooling time.
  final pulumi.Input<int> stabilizationWindowSeconds;

  /// Elastic shrinkage step. The maximum number of instances per unit time.
  final pulumi.Input<int> step;

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

  factory GetApplicationScalingRulesRuleScalingRuleMetricScaleDownRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationScalingRulesRuleScalingRuleMetricScaleDownRule(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      stabilizationWindowSeconds: pulumi.Input.fromValue(
        map['stabilizationWindowSeconds'] as int,
      ),
      step: pulumi.Input.fromValue(map['step'] as int),
    );
  }
}

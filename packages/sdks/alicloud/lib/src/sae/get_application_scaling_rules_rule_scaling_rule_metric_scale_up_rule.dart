// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationScalingRulesRuleScalingRuleMetricScaleUpRule {
  /// Whether shrinkage is prohibited. The values are described as follows:
  final pulumi.Input<bool> disabled;

  /// Expansion cooling time.
  final pulumi.Input<int> stabilizationWindowSeconds;

  /// Flexible expansion step. The maximum number of instances per unit time.
  final pulumi.Input<int> step;

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

  factory GetApplicationScalingRulesRuleScalingRuleMetricScaleUpRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationScalingRulesRuleScalingRuleMetricScaleUpRule(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      stabilizationWindowSeconds: pulumi.Input.fromValue(
        map['stabilizationWindowSeconds'] as int,
      ),
      step: pulumi.Input.fromValue(map['step'] as int),
    );
  }
}

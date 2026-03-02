// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_detection_rule.dart';
import 'threshold_rule.dart';

/// Evaluation rule for a signal definition
class EvaluationRule {
  /// Degraded rule with static threshold. When used, dynamicDetectionRule must not be set.
  final pulumi.Input<ThresholdRule>? degradedRule;
  /// Configure to use ML-based dynamic thresholds. When used, degradedRule and unhealthyRule must not be set.
  final pulumi.Input<DynamicDetectionRule>? dynamicDetectionRule;
  /// Unhealthy rule with static threshold. When used, dynamicDetectionRule must not be set.
  final pulumi.Input<ThresholdRule>? unhealthyRule;

  /// Creates a new [EvaluationRule].
  /// [degradedRule] Degraded rule with static threshold. When used, dynamicDetectionRule must not be set.
  /// [dynamicDetectionRule] Configure to use ML-based dynamic thresholds. When used, degradedRule and unhealthyRule must not be set.
  /// [unhealthyRule] Unhealthy rule with static threshold. When used, dynamicDetectionRule must not be set.
  EvaluationRule({
    this.degradedRule,
    this.dynamicDetectionRule,
    this.unhealthyRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'degradedRule': ?pulumi.Input.mapOptionalInputValue<ThresholdRule, Map<String, dynamic>>(degradedRule, (value) => value.toMap()),
      'dynamicDetectionRule': ?pulumi.Input.mapOptionalInputValue<DynamicDetectionRule, Map<String, dynamic>>(dynamicDetectionRule, (value) => value.toMap()),
      'unhealthyRule': ?pulumi.Input.mapOptionalInputValue<ThresholdRule, Map<String, dynamic>>(unhealthyRule, (value) => value.toMap()),
    };
  }

  factory EvaluationRule.fromMap(Map<String, dynamic> map) {
    return EvaluationRule(
      degradedRule: map['degradedRule'] == null ? null : (ThresholdRule.fromMap((map['degradedRule'] as Map).cast<String, dynamic>())).input(),
      dynamicDetectionRule: map['dynamicDetectionRule'] == null ? null : (DynamicDetectionRule.fromMap((map['dynamicDetectionRule'] as Map).cast<String, dynamic>())).input(),
      unhealthyRule: map['unhealthyRule'] == null ? null : (ThresholdRule.fromMap((map['unhealthyRule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


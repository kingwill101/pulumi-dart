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
  const EvaluationRule({
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
      degradedRule: (() { final guardedValue = map['degradedRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThresholdRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dynamicDetectionRule: (() { final guardedValue = map['dynamicDetectionRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DynamicDetectionRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unhealthyRule: (() { final guardedValue = map['unhealthyRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThresholdRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


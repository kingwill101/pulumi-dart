// ignore_for_file: unused_element, unnecessary_cast

import 'dynamic_detection_rule.dart';
import 'threshold_rule.dart';

/// Evaluation rule for a signal definition
class EvaluationRule {
  /// Degraded rule with static threshold.
  final ThresholdRule? degradedRule;
  /// Configure to use ML-based dynamic thresholds. When used, degradedRule and unhealthyRule must not be set.
  final DynamicDetectionRule? dynamicDetectionRule;
  /// Unhealthy rule with static threshold.
  final ThresholdRule? unhealthyRule;

  /// Creates a new [EvaluationRule].
  /// [degradedRule] Degraded rule with static threshold.
  /// [dynamicDetectionRule] Configure to use ML-based dynamic thresholds. When used, degradedRule and unhealthyRule must not be set.
  /// [unhealthyRule] Unhealthy rule with static threshold.
  EvaluationRule({
    this.degradedRule,
    this.dynamicDetectionRule,
    this.unhealthyRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'degradedRule': ?degradedRule == null ? null : degradedRule!.toMap(),
      'dynamicDetectionRule': ?dynamicDetectionRule == null ? null : dynamicDetectionRule!.toMap(),
      'unhealthyRule': ?unhealthyRule == null ? null : unhealthyRule!.toMap(),
    };
  }

  factory EvaluationRule.fromMap(Map<String, dynamic> map) {
    return EvaluationRule(
      degradedRule: map['degradedRule'] == null ? null : ThresholdRule.fromMap((map['degradedRule'] as Map).cast<String, dynamic>()),
      dynamicDetectionRule: map['dynamicDetectionRule'] == null ? null : DynamicDetectionRule.fromMap((map['dynamicDetectionRule'] as Map).cast<String, dynamic>()),
      unhealthyRule: map['unhealthyRule'] == null ? null : ThresholdRule.fromMap((map['unhealthyRule'] as Map).cast<String, dynamic>()),
    );
  }
}


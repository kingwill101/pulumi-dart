// ignore_for_file: unused_element, unnecessary_cast

import 'dynamic_detection_rule_response.dart';
import 'threshold_rule_response.dart';

/// Evaluation rule for a signal definition
class EvaluationRuleResponse {
  /// Degraded rule with static threshold. When used, dynamicDetectionRule must not be set.
  final ThresholdRuleResponse? degradedRule;
  /// Configure to use ML-based dynamic thresholds. When used, degradedRule and unhealthyRule must not be set.
  final DynamicDetectionRuleResponse? dynamicDetectionRule;
  /// Unhealthy rule with static threshold. When used, dynamicDetectionRule must not be set.
  final ThresholdRuleResponse? unhealthyRule;

  /// Creates a new [EvaluationRuleResponse].
  /// [degradedRule] Degraded rule with static threshold. When used, dynamicDetectionRule must not be set.
  /// [dynamicDetectionRule] Configure to use ML-based dynamic thresholds. When used, degradedRule and unhealthyRule must not be set.
  /// [unhealthyRule] Unhealthy rule with static threshold. When used, dynamicDetectionRule must not be set.
  EvaluationRuleResponse({
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

  factory EvaluationRuleResponse.fromMap(Map<String, dynamic> map) {
    return EvaluationRuleResponse(
      degradedRule: map['degradedRule'] == null ? null : ThresholdRuleResponse.fromMap((map['degradedRule'] as Map).cast<String, dynamic>()),
      dynamicDetectionRule: map['dynamicDetectionRule'] == null ? null : DynamicDetectionRuleResponse.fromMap((map['dynamicDetectionRule'] as Map).cast<String, dynamic>()),
      unhealthyRule: map['unhealthyRule'] == null ? null : ThresholdRuleResponse.fromMap((map['unhealthyRule'] as Map).cast<String, dynamic>()),
    );
  }
}


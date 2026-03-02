// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_detection_rule_response.dart';
import 'threshold_rule_response.dart';

/// Evaluation rule for a signal definition
class EvaluationRuleResponse {
  /// Degraded rule with static threshold. When used, dynamicDetectionRule must not be set.
  final pulumi.Input<ThresholdRuleResponse>? degradedRule;
  /// Configure to use ML-based dynamic thresholds. When used, degradedRule and unhealthyRule must not be set.
  final pulumi.Input<DynamicDetectionRuleResponse>? dynamicDetectionRule;
  /// Unhealthy rule with static threshold. When used, dynamicDetectionRule must not be set.
  final pulumi.Input<ThresholdRuleResponse>? unhealthyRule;

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
      'degradedRule': ?pulumi.Input.mapOptionalInputValue<ThresholdRuleResponse, Map<String, dynamic>>(degradedRule, (value) => value.toMap()),
      'dynamicDetectionRule': ?pulumi.Input.mapOptionalInputValue<DynamicDetectionRuleResponse, Map<String, dynamic>>(dynamicDetectionRule, (value) => value.toMap()),
      'unhealthyRule': ?pulumi.Input.mapOptionalInputValue<ThresholdRuleResponse, Map<String, dynamic>>(unhealthyRule, (value) => value.toMap()),
    };
  }

  factory EvaluationRuleResponse.fromMap(Map<String, dynamic> map) {
    return EvaluationRuleResponse(
      degradedRule: map['degradedRule'] == null ? null : (ThresholdRuleResponse.fromMap((map['degradedRule'] as Map).cast<String, dynamic>())).input(),
      dynamicDetectionRule: map['dynamicDetectionRule'] == null ? null : (DynamicDetectionRuleResponse.fromMap((map['dynamicDetectionRule'] as Map).cast<String, dynamic>())).input(),
      unhealthyRule: map['unhealthyRule'] == null ? null : (ThresholdRuleResponse.fromMap((map['unhealthyRule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


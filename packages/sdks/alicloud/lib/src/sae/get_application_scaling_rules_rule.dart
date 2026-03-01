// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_scaling_rules_rule_scaling_rule_metric.dart';
import 'get_application_scaling_rules_rule_scaling_rule_timer.dart';

class GetApplicationScalingRulesRule {
  /// The ID of the Application.
  final String appId;
  /// The CreateTime of the Application Scaling Rule.
  final String createTime;
  /// The ID of the Application Scaling Rule.
  final String id;
  /// Whether to enable the auto scaling policy.
  final bool scalingRuleEnable;
  /// Monitoring indicators for elastic scaling.
  final List<GetApplicationScalingRulesRuleScalingRuleMetric> scalingRuleMetrics;
  /// The name of the scaling rule.
  final String scalingRuleName;
  /// Timing elastic expansion.
  final List<GetApplicationScalingRulesRuleScalingRuleTimer> scalingRuleTimers;
  /// Flexible strategy type.
  final String scalingRuleType;

  /// Creates a new [GetApplicationScalingRulesRule].
  /// [appId] The ID of the Application.
  /// [createTime] The CreateTime of the Application Scaling Rule.
  /// [id] The ID of the Application Scaling Rule.
  /// [scalingRuleEnable] Whether to enable the auto scaling policy.
  /// [scalingRuleMetrics] Monitoring indicators for elastic scaling.
  /// [scalingRuleName] The name of the scaling rule.
  /// [scalingRuleTimers] Timing elastic expansion.
  /// [scalingRuleType] Flexible strategy type.
  GetApplicationScalingRulesRule({
    required this.appId,
    required this.createTime,
    required this.id,
    required this.scalingRuleEnable,
    required this.scalingRuleMetrics,
    required this.scalingRuleName,
    required this.scalingRuleTimers,
    required this.scalingRuleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'createTime': createTime,
      'id': id,
      'scalingRuleEnable': scalingRuleEnable,
      'scalingRuleMetrics': pulumi.Input.encodeList<GetApplicationScalingRulesRuleScalingRuleMetric, Map<String, dynamic>>(scalingRuleMetrics, (value) => value.toMap()),
      'scalingRuleName': scalingRuleName,
      'scalingRuleTimers': pulumi.Input.encodeList<GetApplicationScalingRulesRuleScalingRuleTimer, Map<String, dynamic>>(scalingRuleTimers, (value) => value.toMap()),
      'scalingRuleType': scalingRuleType,
    };
  }

  factory GetApplicationScalingRulesRule.fromMap(Map<String, dynamic> map) {
    return GetApplicationScalingRulesRule(
      appId: map['appId'] as String,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      scalingRuleEnable: map['scalingRuleEnable'] as bool,
      scalingRuleMetrics: pulumi.Input.decodeList<GetApplicationScalingRulesRuleScalingRuleMetric>(map['scalingRuleMetrics'], (value) => GetApplicationScalingRulesRuleScalingRuleMetric.fromMap((value as Map).cast<String, dynamic>())),
      scalingRuleName: map['scalingRuleName'] as String,
      scalingRuleTimers: pulumi.Input.decodeList<GetApplicationScalingRulesRuleScalingRuleTimer>(map['scalingRuleTimers'], (value) => GetApplicationScalingRulesRuleScalingRuleTimer.fromMap((value as Map).cast<String, dynamic>())),
      scalingRuleType: map['scalingRuleType'] as String,
    );
  }
}


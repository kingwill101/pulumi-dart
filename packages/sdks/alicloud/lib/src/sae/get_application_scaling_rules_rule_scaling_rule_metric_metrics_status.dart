// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_scaling_rules_rule_scaling_rule_metric_metrics_status_current_metric.dart';
import 'get_application_scaling_rules_rule_scaling_rule_metric_metrics_status_next_scale_metric.dart';

class GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatus {
  /// The current monitoring indicator elasticity list.
  final pulumi.Input<List<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric>> currentMetrics;
  /// The number of current instances.
  final pulumi.Input<int> currentReplicas;
  /// The number of target instances.
  final pulumi.Input<int> desiredReplicas;
  /// The time of the last elastic expansion.
  final pulumi.Input<String> lastScaleTime;
  /// The maximum number of instances.
  final pulumi.Input<int> maxReplicas;
  /// The minimum number of instances.
  final pulumi.Input<int> minReplicas;
  /// Next monitoring indicator elasticity list
  final pulumi.Input<List<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric>> nextScaleMetrics;
  /// The next cycle of monitoring indicator elasticity.
  final pulumi.Input<int> nextScaleTimePeriod;

  /// Creates a new [GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatus].
  /// [currentMetrics] The current monitoring indicator elasticity list.
  /// [currentReplicas] The number of current instances.
  /// [desiredReplicas] The number of target instances.
  /// [lastScaleTime] The time of the last elastic expansion.
  /// [maxReplicas] The maximum number of instances.
  /// [minReplicas] The minimum number of instances.
  /// [nextScaleMetrics] Next monitoring indicator elasticity list
  /// [nextScaleTimePeriod] The next cycle of monitoring indicator elasticity.
  GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatus({
    required this.currentMetrics,
    required this.currentReplicas,
    required this.desiredReplicas,
    required this.lastScaleTime,
    required this.maxReplicas,
    required this.minReplicas,
    required this.nextScaleMetrics,
    required this.nextScaleTimePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentMetrics': pulumi.Input.mapInputValue<List<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric>, List<Map<String, dynamic>>>(currentMetrics, (value) => pulumi.Input.encodeList<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'currentReplicas': currentReplicas,
      'desiredReplicas': desiredReplicas,
      'lastScaleTime': lastScaleTime,
      'maxReplicas': maxReplicas,
      'minReplicas': minReplicas,
      'nextScaleMetrics': pulumi.Input.mapInputValue<List<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric>, List<Map<String, dynamic>>>(nextScaleMetrics, (value) => pulumi.Input.encodeList<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nextScaleTimePeriod': nextScaleTimePeriod,
    };
  }

  factory GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatus.fromMap(Map<String, dynamic> map) {
    return GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatus(
      currentMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric>(map['currentMetrics']!, (value) => GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric.fromMap((value as Map).cast<String, dynamic>()))),
      currentReplicas: pulumi.Input.fromValue(map['currentReplicas'] as int),
      desiredReplicas: pulumi.Input.fromValue(map['desiredReplicas'] as int),
      lastScaleTime: pulumi.Input.fromValue(map['lastScaleTime'] as String),
      maxReplicas: pulumi.Input.fromValue(map['maxReplicas'] as int),
      minReplicas: pulumi.Input.fromValue(map['minReplicas'] as int),
      nextScaleMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric>(map['nextScaleMetrics']!, (value) => GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric.fromMap((value as Map).cast<String, dynamic>()))),
      nextScaleTimePeriod: pulumi.Input.fromValue(map['nextScaleTimePeriod'] as int),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_scaling_rules_rule_scaling_rule_metric_metrics_status_current_metric.dart';
import 'get_application_scaling_rules_rule_scaling_rule_metric_metrics_status_next_scale_metric.dart';

class GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatus {
  /// The current monitoring indicator elasticity list.
  final List<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric> currentMetrics;
  /// The number of current instances.
  final int currentReplicas;
  /// The number of target instances.
  final int desiredReplicas;
  /// The time of the last elastic expansion.
  final String lastScaleTime;
  /// The maximum number of instances.
  final int maxReplicas;
  /// The minimum number of instances.
  final int minReplicas;
  /// Next monitoring indicator elasticity list
  final List<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric> nextScaleMetrics;
  /// The next cycle of monitoring indicator elasticity.
  final int nextScaleTimePeriod;

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
      'currentMetrics': pulumi.Input.encodeList<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric, Map<String, dynamic>>(currentMetrics, (value) => value.toMap()),
      'currentReplicas': currentReplicas,
      'desiredReplicas': desiredReplicas,
      'lastScaleTime': lastScaleTime,
      'maxReplicas': maxReplicas,
      'minReplicas': minReplicas,
      'nextScaleMetrics': pulumi.Input.encodeList<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric, Map<String, dynamic>>(nextScaleMetrics, (value) => value.toMap()),
      'nextScaleTimePeriod': nextScaleTimePeriod,
    };
  }

  factory GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatus.fromMap(Map<String, dynamic> map) {
    return GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatus(
      currentMetrics: pulumi.Input.decodeList<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric>(map['currentMetrics'], (value) => GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusCurrentMetric.fromMap((value as Map).cast<String, dynamic>())),
      currentReplicas: map['currentReplicas'] as int,
      desiredReplicas: map['desiredReplicas'] as int,
      lastScaleTime: map['lastScaleTime'] as String,
      maxReplicas: map['maxReplicas'] as int,
      minReplicas: map['minReplicas'] as int,
      nextScaleMetrics: pulumi.Input.decodeList<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric>(map['nextScaleMetrics'], (value) => GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatusNextScaleMetric.fromMap((value as Map).cast<String, dynamic>())),
      nextScaleTimePeriod: map['nextScaleTimePeriod'] as int,
    );
  }
}


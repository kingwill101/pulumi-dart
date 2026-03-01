// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_scaling_rules_rule_scaling_rule_metric_metric.dart';
import 'get_application_scaling_rules_rule_scaling_rule_metric_metrics_status.dart';
import 'get_application_scaling_rules_rule_scaling_rule_metric_scale_down_rule.dart';
import 'get_application_scaling_rules_rule_scaling_rule_metric_scale_up_rule.dart';

class GetApplicationScalingRulesRuleScalingRuleMetric {
  /// The maximum number of instances.
  final int maxReplicas;
  /// The auto scaling list of monitoring indicators.
  final List<GetApplicationScalingRulesRuleScalingRuleMetricMetric> metrics;
  /// Monitor indicator elasticity status.
  final List<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatus> metricsStatuses;
  /// The minimum number of instances.
  final int minReplicas;
  /// The shrink rule.
  final List<GetApplicationScalingRulesRuleScalingRuleMetricScaleDownRule> scaleDownRules;
  /// The expansion rules.
  final List<GetApplicationScalingRulesRuleScalingRuleMetricScaleUpRule> scaleUpRules;

  /// Creates a new [GetApplicationScalingRulesRuleScalingRuleMetric].
  /// [maxReplicas] The maximum number of instances.
  /// [metrics] The auto scaling list of monitoring indicators.
  /// [metricsStatuses] Monitor indicator elasticity status.
  /// [minReplicas] The minimum number of instances.
  /// [scaleDownRules] The shrink rule.
  /// [scaleUpRules] The expansion rules.
  GetApplicationScalingRulesRuleScalingRuleMetric({
    required this.maxReplicas,
    required this.metrics,
    required this.metricsStatuses,
    required this.minReplicas,
    required this.scaleDownRules,
    required this.scaleUpRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': maxReplicas,
      'metrics': pulumi.Input.encodeList<GetApplicationScalingRulesRuleScalingRuleMetricMetric, Map<String, dynamic>>(metrics, (value) => value.toMap()),
      'metricsStatuses': pulumi.Input.encodeList<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatus, Map<String, dynamic>>(metricsStatuses, (value) => value.toMap()),
      'minReplicas': minReplicas,
      'scaleDownRules': pulumi.Input.encodeList<GetApplicationScalingRulesRuleScalingRuleMetricScaleDownRule, Map<String, dynamic>>(scaleDownRules, (value) => value.toMap()),
      'scaleUpRules': pulumi.Input.encodeList<GetApplicationScalingRulesRuleScalingRuleMetricScaleUpRule, Map<String, dynamic>>(scaleUpRules, (value) => value.toMap()),
    };
  }

  factory GetApplicationScalingRulesRuleScalingRuleMetric.fromMap(Map<String, dynamic> map) {
    return GetApplicationScalingRulesRuleScalingRuleMetric(
      maxReplicas: map['maxReplicas'] as int,
      metrics: pulumi.Input.decodeList<GetApplicationScalingRulesRuleScalingRuleMetricMetric>(map['metrics'], (value) => GetApplicationScalingRulesRuleScalingRuleMetricMetric.fromMap((value as Map).cast<String, dynamic>())),
      metricsStatuses: pulumi.Input.decodeList<GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatus>(map['metricsStatuses'], (value) => GetApplicationScalingRulesRuleScalingRuleMetricMetricsStatus.fromMap((value as Map).cast<String, dynamic>())),
      minReplicas: map['minReplicas'] as int,
      scaleDownRules: pulumi.Input.decodeList<GetApplicationScalingRulesRuleScalingRuleMetricScaleDownRule>(map['scaleDownRules'], (value) => GetApplicationScalingRulesRuleScalingRuleMetricScaleDownRule.fromMap((value as Map).cast<String, dynamic>())),
      scaleUpRules: pulumi.Input.decodeList<GetApplicationScalingRulesRuleScalingRuleMetricScaleUpRule>(map['scaleUpRules'], (value) => GetApplicationScalingRulesRuleScalingRuleMetricScaleUpRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


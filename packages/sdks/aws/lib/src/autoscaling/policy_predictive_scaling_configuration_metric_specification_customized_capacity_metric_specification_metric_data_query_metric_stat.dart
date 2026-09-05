// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_configuration_metric_specification_customized_capacity_metric_specification_metric_data_query_metric_stat_metric.dart';

class PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat {
  /// Structure that defines the CloudWatch metric to return, including the metric name, namespace, and dimensions.
  final pulumi.Input<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric> metric;
  /// Statistic of the metrics to return.
  final pulumi.Input<String> stat;
  /// Unit of the metrics to return.
  final pulumi.Input<String?>? unit;

  /// Creates a new [PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat].
  /// [metric] Structure that defines the CloudWatch metric to return, including the metric name, namespace, and dimensions.
  /// [stat] Statistic of the metrics to return.
  /// [unit] Unit of the metrics to return.
  const PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat({
    required this.metric,
    required this.stat,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': pulumi.Input.mapInputValue<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'stat': stat,
      'unit': ?unit,
    };
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat(
      metric: pulumi.Input.fromValue(PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric.fromMap((map['metric']! as Map).cast<String, dynamic>())),
      stat: pulumi.Input.fromValue(map['stat'] as String),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

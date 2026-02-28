// ignore_for_file: unused_element, unnecessary_cast

import 'policy_target_tracking_scaling_policy_configuration_customized_metric_specification_metric_metric_stat_metric.dart';

class PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStat {
  /// Structure that defines the CloudWatch metric to return, including the metric name, namespace, and dimensions.
  final PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetric
      metric;

  /// Statistic of the metrics to return.
  final String stat;

  /// Unit of the metrics to return.
  final String? unit;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStat].
  /// [metric] Structure that defines the CloudWatch metric to return, including the metric name, namespace, and dimensions.
  /// [stat] Statistic of the metrics to return.
  /// [unit] Unit of the metrics to return.
  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStat({
    required this.metric,
    required this.stat,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metric'] = metric.toMap();
    map['stat'] = stat;
    final unitValue = unit;
    if (unitValue != null) {
      map['unit'] = unitValue;
    }
    return map;
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStat.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStat(
      metric:
          PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetric
              .fromMap((map['metric'] as Map).cast<String, dynamic>()),
      stat: map['stat'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}

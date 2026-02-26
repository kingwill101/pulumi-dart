// ignore_for_file: unused_element, unnecessary_cast

import '../policy_target_tracking_configuration_customized_metric_specification_metric_metric_stat_metric/policy_target_tracking_configuration_customized_metric_specification_metric_metric_stat_metric.dart';

class PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat {
  /// Structure that defines the CloudWatch metric to return, including the metric name, namespace, and dimensions.
  final PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric
      metric;

  /// The period of the metric in seconds.
  final int? period;

  /// Statistic of the metrics to return.
  final String stat;

  /// Unit of the metrics to return.
  final String? unit;

  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat({
    required this.metric,
    this.period,
    required this.stat,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metric'] = metric.toMap();
    final periodValue = period;
    if (periodValue != null) {
      map['period'] = periodValue;
    }
    map['stat'] = stat;
    final unitValue = unit;
    if (unitValue != null) {
      map['unit'] = unitValue;
    }
    return map;
  }

  factory PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat(
      metric:
          PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric
              .fromMap((map['metric'] as Map).cast<String, dynamic>()),
      period: map['period'] == null ? null : map['period'] as int,
      stat: map['stat'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}

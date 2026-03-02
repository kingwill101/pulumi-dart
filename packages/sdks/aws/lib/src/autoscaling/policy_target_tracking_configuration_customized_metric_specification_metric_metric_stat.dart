// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_configuration_customized_metric_specification_metric_metric_stat_metric.dart';

class PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat {
  /// Structure that defines the CloudWatch metric to return, including the metric name, namespace, and dimensions.
  final pulumi.Input<PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric> metric;
  /// The period of the metric in seconds.
  final pulumi.Input<int>? period;
  /// Statistic of the metrics to return.
  final pulumi.Input<String> stat;
  /// Unit of the metrics to return.
  final pulumi.Input<String>? unit;

  /// Creates a new [PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat].
  /// [metric] Structure that defines the CloudWatch metric to return, including the metric name, namespace, and dimensions.
  /// [period] The period of the metric in seconds.
  /// [stat] Statistic of the metrics to return.
  /// [unit] Unit of the metrics to return.
  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat({
    required this.metric,
    this.period,
    required this.stat,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': pulumi.Input.mapInputValue<PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'period': ?period,
      'stat': stat,
      'unit': ?unit,
    };
  }

  factory PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat(
      metric: (PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric.fromMap((map['metric'] as Map).cast<String, dynamic>())).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      stat: (map['stat'] as String).input(),
      unit: map['unit'] == null ? null : (map['unit'] as String).input(),
    );
  }
}


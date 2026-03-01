// ignore_for_file: unused_element, unnecessary_cast

import 'policy_target_tracking_scaling_policy_configuration_customized_metric_specification_metric_metric_stat.dart';

class PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric {
  /// Math expression used on the returned metric. You must specify either `expression` or `metric_stat`, but not both.
  final String? expression;
  /// Short name for the metric used in target tracking scaling policy.
  final String id;
  /// Human-readable label for this metric or expression.
  final String? label;
  /// Structure that defines CloudWatch metric to be used in target tracking scaling policy. You must specify either `expression` or `metric_stat`, but not both.
  final PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStat? metricStat;
  /// Boolean that indicates whether to return the timestamps and raw data values of this metric, the default is true
  final bool? returnData;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric].
  /// [expression] Math expression used on the returned metric. You must specify either `expression` or `metric_stat`, but not both.
  /// [id] Short name for the metric used in target tracking scaling policy.
  /// [label] Human-readable label for this metric or expression.
  /// [metricStat] Structure that defines CloudWatch metric to be used in target tracking scaling policy. You must specify either `expression` or `metric_stat`, but not both.
  /// [returnData] Boolean that indicates whether to return the timestamps and raw data values of this metric, the default is true
  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric({
    this.expression,
    required this.id,
    this.label,
    this.metricStat,
    this.returnData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'id': id,
      'label': ?label,
      'metricStat': ?metricStat == null ? null : metricStat!.toMap(),
      'returnData': ?returnData,
    };
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric(
      expression: map['expression'] == null ? null : map['expression'] as String,
      id: map['id'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      metricStat: map['metricStat'] == null ? null : PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStat.fromMap((map['metricStat'] as Map).cast<String, dynamic>()),
      returnData: map['returnData'] == null ? null : map['returnData'] as bool,
    );
  }
}


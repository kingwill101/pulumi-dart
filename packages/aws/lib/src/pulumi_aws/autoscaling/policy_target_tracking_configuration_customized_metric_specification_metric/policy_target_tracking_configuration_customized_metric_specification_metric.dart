// ignore_for_file: unused_element, unnecessary_cast

import '../policy_target_tracking_configuration_customized_metric_specification_metric_metric_stat/policy_target_tracking_configuration_customized_metric_specification_metric_metric_stat.dart';

class PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric {
  /// Math expression used on the returned metric. You must specify either `expression` or `metric_stat`, but not both.
  final String? expression;

  /// Short name for the metric used in target tracking scaling policy.
  final String id;

  /// Human-readable label for this metric or expression.
  final String? label;

  /// Structure that defines CloudWatch metric to be used in target tracking scaling policy. You must specify either `expression` or `metric_stat`, but not both.
  final PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat?
      metricStat;

  /// Boolean that indicates whether to return the timestamps and raw data values of this metric, the default is true
  final bool? returnData;

  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric({
    this.expression,
    required this.id,
    this.label,
    this.metricStat,
    this.returnData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expressionValue = expression;
    if (expressionValue != null) {
      map['expression'] = expressionValue;
    }
    map['id'] = id;
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final metricStatValue = metricStat;
    if (metricStatValue != null) {
      map['metricStat'] = metricStatValue.toMap();
    }
    final returnDataValue = returnData;
    if (returnDataValue != null) {
      map['returnData'] = returnDataValue;
    }
    return map;
  }

  factory PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric(
      expression:
          map['expression'] == null ? null : map['expression'] as String,
      id: map['id'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      metricStat: map['metricStat'] == null
          ? null
          : PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat
              .fromMap((map['metricStat'] as Map).cast<String, dynamic>()),
      returnData: map['returnData'] == null ? null : map['returnData'] as bool,
    );
  }
}

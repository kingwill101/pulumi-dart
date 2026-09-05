// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_configuration_customized_metric_specification_metric_metric_stat.dart';

class PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric {
  /// Math expression used on the returned metric. You must specify either `expression` or `metricStat`, but not both.
  final pulumi.Input<String?>? expression;
  /// Short name for the metric used in target tracking scaling policy.
  final pulumi.Input<String> id;
  /// Human-readable label for this metric or expression.
  final pulumi.Input<String?>? label;
  /// Structure that defines CloudWatch metric to be used in target tracking scaling policy. You must specify either `expression` or `metricStat`, but not both.
  final pulumi.Input<PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat?>? metricStat;
  /// Boolean that indicates whether to return the timestamps and raw data values of this metric, the default is true
  final pulumi.Input<bool?>? returnData;

  /// Creates a new [PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric].
  /// [expression] Math expression used on the returned metric. You must specify either `expression` or `metricStat`, but not both.
  /// [id] Short name for the metric used in target tracking scaling policy.
  /// [label] Human-readable label for this metric or expression.
  /// [metricStat] Structure that defines CloudWatch metric to be used in target tracking scaling policy. You must specify either `expression` or `metricStat`, but not both.
  /// [returnData] Boolean that indicates whether to return the timestamps and raw data values of this metric, the default is true
  const PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric({
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
      'metricStat': ?pulumi.Input.mapOptionalInputValue<PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat, Map<String, dynamic>>(metricStat, (value) => value.toMap()),
      'returnData': ?returnData,
    };
  }

  factory PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricStat: (() { final guardedValue = map['metricStat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      returnData: (() { final guardedValue = map['returnData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

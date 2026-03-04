// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_scaling_policy_configuration_customized_metric_specification_metric_metric_stat.dart';

class PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric {
  /// Math expression used on the returned metric. You must specify either `expression` or `metric_stat`, but not both.
  final pulumi.Input<String>? expression;

  /// Short name for the metric used in target tracking scaling policy.
  final pulumi.Input<String> id;

  /// Human-readable label for this metric or expression.
  final pulumi.Input<String>? label;

  /// Structure that defines CloudWatch metric to be used in target tracking scaling policy. You must specify either `expression` or `metric_stat`, but not both.
  final pulumi.Input<
    PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStat
  >?
  metricStat;

  /// Boolean that indicates whether to return the timestamps and raw data values of this metric, the default is true
  final pulumi.Input<bool>? returnData;

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
      'metricStat':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStat,
            Map<String, dynamic>
          >(metricStat, (value) => value.toMap()),
      'returnData': ?returnData,
    };
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric(
      expression: (() {
        final guardedValue = map['expression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metricStat: (() {
        final guardedValue = map['metricStat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStat.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      returnData: (() {
        final guardedValue = map['returnData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

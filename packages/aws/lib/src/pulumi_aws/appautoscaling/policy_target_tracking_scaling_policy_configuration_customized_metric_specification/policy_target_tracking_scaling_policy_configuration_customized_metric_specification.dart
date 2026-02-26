// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_target_tracking_scaling_policy_configuration_customized_metric_specification_dimension/policy_target_tracking_scaling_policy_configuration_customized_metric_specification_dimension.dart';
import '../policy_target_tracking_scaling_policy_configuration_customized_metric_specification_metric/policy_target_tracking_scaling_policy_configuration_customized_metric_specification_metric.dart';

class PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification {
  /// Dimensions of the metric.
  final List<
          PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension>?
      dimensions;

  /// Name of the metric.
  final String? metricName;

  /// Metrics to include, as a metric data query.
  final List<
          PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric>?
      metrics;

  /// Namespace of the metric.
  final String? namespace;

  /// Statistic of the metric. Valid values: `Average`, `Minimum`, `Maximum`, `SampleCount`, and `Sum`.
  final String? statistic;

  /// Unit of the metrics to return.
  final String? unit;

  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification({
    this.dimensions,
    this.metricName,
    this.metrics,
    this.namespace,
    this.statistic,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = Input.encodeList<
          PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension,
          Map<String, dynamic>>(dimensionsValue, (value) => value.toMap());
    }
    final metricNameValue = metricName;
    if (metricNameValue != null) {
      map['metricName'] = metricNameValue;
    }
    final metricsValue = metrics;
    if (metricsValue != null) {
      map['metrics'] = Input.encodeList<
          PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric,
          Map<String, dynamic>>(metricsValue, (value) => value.toMap());
    }
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final statisticValue = statistic;
    if (statisticValue != null) {
      map['statistic'] = statisticValue;
    }
    final unitValue = unit;
    if (unitValue != null) {
      map['unit'] = unitValue;
    }
    return map;
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification(
      dimensions: map['dimensions'] == null
          ? null
          : Input.decodeList<
                  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension>(
              map['dimensions'],
              (value) =>
                  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension
                      .fromMap((value as Map).cast<String, dynamic>())),
      metricName:
          map['metricName'] == null ? null : map['metricName'] as String,
      metrics: map['metrics'] == null
          ? null
          : Input.decodeList<
                  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric>(
              map['metrics'],
              (value) =>
                  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric
                      .fromMap((value as Map).cast<String, dynamic>())),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      statistic: map['statistic'] == null ? null : map['statistic'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}

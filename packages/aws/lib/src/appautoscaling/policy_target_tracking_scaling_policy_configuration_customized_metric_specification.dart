// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_scaling_policy_configuration_customized_metric_specification_dimension.dart';
import 'policy_target_tracking_scaling_policy_configuration_customized_metric_specification_metric.dart';

class PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification {
  /// Dimensions of the metric.
  final List<
    PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension
  >?
  dimensions;

  /// Name of the metric.
  final String? metricName;

  /// Metrics to include, as a metric data query.
  final List<
    PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric
  >?
  metrics;

  /// Namespace of the metric.
  final String? namespace;

  /// Statistic of the metric. Valid values: `Average`, `Minimum`, `Maximum`, `SampleCount`, and `Sum`.
  final String? statistic;

  /// Unit of the metrics to return.
  final String? unit;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification].
  /// [dimensions] Dimensions of the metric.
  /// [metricName] Name of the metric.
  /// [metrics] Metrics to include, as a metric data query.
  /// [namespace] Namespace of the metric.
  /// [statistic] Statistic of the metric. Valid values: `Average`, `Minimum`, `Maximum`, `SampleCount`, and `Sum`.
  /// [unit] Unit of the metrics to return.
  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification({
    this.dimensions,
    this.metricName,
    this.metrics,
    this.namespace,
    this.statistic,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null
          ? null
          : pulumi.Input.encodeList<
              PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension,
              Map<String, dynamic>
            >(dimensions!, (value) => value.toMap()),
      'metricName': ?metricName,
      'metrics': ?metrics == null
          ? null
          : pulumi.Input.encodeList<
              PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric,
              Map<String, dynamic>
            >(metrics!, (value) => value.toMap()),
      'namespace': ?namespace,
      'statistic': ?statistic,
      'unit': ?unit,
    };
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification(
      dimensions: map['dimensions'] == null
          ? null
          : pulumi.Input.decodeList<
              PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension
            >(
              map['dimensions'],
              (value) =>
                  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      metricName: map['metricName'] == null
          ? null
          : map['metricName'] as String,
      metrics: map['metrics'] == null
          ? null
          : pulumi.Input.decodeList<
              PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric
            >(
              map['metrics'],
              (value) =>
                  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      statistic: map['statistic'] == null ? null : map['statistic'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}

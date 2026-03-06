// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_scaling_policy_configuration_customized_metric_specification_dimension.dart';
import 'policy_target_tracking_scaling_policy_configuration_customized_metric_specification_metric.dart';

class PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification {
  /// Dimensions of the metric.
  final pulumi.Input<List<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension>>? dimensions;
  /// Name of the metric.
  final pulumi.Input<String>? metricName;
  /// Metrics to include, as a metric data query.
  final pulumi.Input<List<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric>>? metrics;
  /// Namespace of the metric.
  final pulumi.Input<String>? namespace;
  /// Statistic of the metric. Valid values: `Average`, `Minimum`, `Maximum`, `SampleCount`, and `Sum`.
  final pulumi.Input<String>? statistic;
  /// Unit of the metrics to return.
  final pulumi.Input<String>? unit;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification].
  /// [dimensions] Dimensions of the metric.
  /// [metricName] Name of the metric.
  /// [metrics] Metrics to include, as a metric data query.
  /// [namespace] Namespace of the metric.
  /// [statistic] Statistic of the metric. Valid values: `Average`, `Minimum`, `Maximum`, `SampleCount`, and `Sum`.
  /// [unit] Unit of the metrics to return.
  const PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification({
    this.dimensions,
    this.metricName,
    this.metrics,
    this.namespace,
    this.statistic,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricName': ?metricName,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namespace': ?namespace,
      'statistic': ?statistic,
      'unit': ?unit,
    };
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecification(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension>(guardedValue, (value) => PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric>(guardedValue, (value) => PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric.fromMap((value as Map).cast<String, dynamic>()))); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statistic: (() { final guardedValue = map['statistic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


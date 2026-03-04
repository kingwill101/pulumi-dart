// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_configuration_customized_metric_specification_metric.dart';
import 'policy_target_tracking_configuration_customized_metric_specification_metric_dimension.dart';

class PolicyTargetTrackingConfigurationCustomizedMetricSpecification {
  /// Dimensions of the metric.
  final pulumi.Input<
    List<
      PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension
    >
  >?
  metricDimensions;

  /// Name of the metric.
  final pulumi.Input<String>? metricName;

  /// Metrics to include, as a metric data query.
  final pulumi.Input<
    List<PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric>
  >?
  metrics;

  /// Namespace of the metric.
  final pulumi.Input<String>? namespace;

  /// The period of the metric in seconds.
  final pulumi.Input<int>? period;

  /// Statistic of the metric.
  final pulumi.Input<String>? statistic;

  /// Unit of the metric.
  final pulumi.Input<String>? unit;

  /// Creates a new [PolicyTargetTrackingConfigurationCustomizedMetricSpecification].
  /// [metricDimensions] Dimensions of the metric.
  /// [metricName] Name of the metric.
  /// [metrics] Metrics to include, as a metric data query.
  /// [namespace] Namespace of the metric.
  /// [period] The period of the metric in seconds.
  /// [statistic] Statistic of the metric.
  /// [unit] Unit of the metric.
  PolicyTargetTrackingConfigurationCustomizedMetricSpecification({
    this.metricDimensions,
    this.metricName,
    this.metrics,
    this.namespace,
    this.period,
    this.statistic,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricDimensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension
            >,
            List<Map<String, dynamic>>
          >(
            metricDimensions,
            (value) =>
                pulumi.Input.encodeList<
                  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'metricName': ?metricName,
      'metrics':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric
            >,
            List<Map<String, dynamic>>
          >(
            metrics,
            (value) =>
                pulumi.Input.encodeList<
                  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'namespace': ?namespace,
      'period': ?period,
      'statistic': ?statistic,
      'unit': ?unit,
    };
  }

  factory PolicyTargetTrackingConfigurationCustomizedMetricSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyTargetTrackingConfigurationCustomizedMetricSpecification(
      metricDimensions: (() {
        final guardedValue = map['metricDimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension
          >(
            guardedValue,
            (value) =>
                PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      metricName: (() {
        final guardedValue = map['metricName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metrics: (() {
        final guardedValue = map['metrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric
          >(
            guardedValue,
            (value) =>
                PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      statistic: (() {
        final guardedValue = map['statistic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      unit: (() {
        final guardedValue = map['unit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

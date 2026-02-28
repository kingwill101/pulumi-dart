// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_configuration_customized_metric_specification_metric.dart';
import 'policy_target_tracking_configuration_customized_metric_specification_metric_dimension.dart';

class PolicyTargetTrackingConfigurationCustomizedMetricSpecification {
  /// Dimensions of the metric.
  final List<
          PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension>?
      metricDimensions;

  /// Name of the metric.
  final String? metricName;

  /// Metrics to include, as a metric data query.
  final List<
          PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric>?
      metrics;

  /// Namespace of the metric.
  final String? namespace;

  /// The period of the metric in seconds.
  final int? period;

  /// Statistic of the metric.
  final String? statistic;

  /// Unit of the metric.
  final String? unit;

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
    final map = <String, dynamic>{};
    final metricDimensionsValue = metricDimensions;
    if (metricDimensionsValue != null) {
      map['metricDimensions'] = pulumi.Input.encodeList<
          PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension,
          Map<String,
              dynamic>>(metricDimensionsValue, (value) => value.toMap());
    }
    final metricNameValue = metricName;
    if (metricNameValue != null) {
      map['metricName'] = metricNameValue;
    }
    final metricsValue = metrics;
    if (metricsValue != null) {
      map['metrics'] = pulumi.Input.encodeList<
          PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric,
          Map<String, dynamic>>(metricsValue, (value) => value.toMap());
    }
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final periodValue = period;
    if (periodValue != null) {
      map['period'] = periodValue;
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

  factory PolicyTargetTrackingConfigurationCustomizedMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingConfigurationCustomizedMetricSpecification(
      metricDimensions: map['metricDimensions'] == null
          ? null
          : pulumi.Input.decodeList<
                  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension>(
              map['metricDimensions'],
              (value) =>
                  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension
                      .fromMap((value as Map).cast<String, dynamic>())),
      metricName:
          map['metricName'] == null ? null : map['metricName'] as String,
      metrics: map['metrics'] == null
          ? null
          : pulumi.Input.decodeList<
                  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric>(
              map['metrics'],
              (value) =>
                  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetric
                      .fromMap((value as Map).cast<String, dynamic>())),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      statistic: map['statistic'] == null ? null : map['statistic'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}

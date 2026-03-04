// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_dimension.dart';

/// Criterion to filter metrics.
class MetricCriteria {
  /// Specifies the type of threshold criteria
  /// Expected value is 'StaticThresholdCriterion'.
  final pulumi.Input<String> criterionType;

  /// List of dimension conditions.
  final pulumi.Input<List<MetricDimension>>? dimensions;

  /// Name of the metric.
  final pulumi.Input<String> metricName;

  /// Namespace of the metric.
  final pulumi.Input<String>? metricNamespace;

  /// Name of the criteria.
  final pulumi.Input<String> name;

  /// the criteria operator.
  final pulumi.Input<String> operator;

  /// Allows creating an alert rule on a custom metric that isn't yet emitted, by causing the metric validation to be skipped.
  final pulumi.Input<bool>? skipMetricValidation;

  /// the criteria threshold value that activates the alert.
  final pulumi.Input<double> threshold;

  /// the criteria time aggregation types.
  final pulumi.Input<String> timeAggregation;

  /// Creates a new [MetricCriteria].
  /// [criterionType] Specifies the type of threshold criteria
  /// [dimensions] List of dimension conditions.
  /// [metricName] Name of the metric.
  /// [metricNamespace] Namespace of the metric.
  /// [name] Name of the criteria.
  /// [operator] the criteria operator.
  /// [skipMetricValidation] Allows creating an alert rule on a custom metric that isn't yet emitted, by causing the metric validation to be skipped.
  /// [threshold] the criteria threshold value that activates the alert.
  /// [timeAggregation] the criteria time aggregation types.
  MetricCriteria({
    required this.criterionType,
    this.dimensions,
    required this.metricName,
    this.metricNamespace,
    required this.name,
    required this.operator,
    this.skipMetricValidation,
    required this.threshold,
    required this.timeAggregation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criterionType': criterionType,
      'dimensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<MetricDimension>,
            List<Map<String, dynamic>>
          >(
            dimensions,
            (value) =>
                pulumi.Input.encodeList<MetricDimension, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'metricName': metricName,
      'metricNamespace': ?metricNamespace,
      'name': name,
      'operator': operator,
      'skipMetricValidation': ?skipMetricValidation,
      'threshold': threshold,
      'timeAggregation': timeAggregation,
    };
  }

  factory MetricCriteria.fromMap(Map<String, dynamic> map) {
    return MetricCriteria(
      criterionType: pulumi.Input.fromValue(map['criterionType'] as String),
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MetricDimension>(
            guardedValue,
            (value) =>
                MetricDimension.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricNamespace: (() {
        final guardedValue = map['metricNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      skipMetricValidation: (() {
        final guardedValue = map['skipMetricValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
      timeAggregation: pulumi.Input.fromValue(map['timeAggregation'] as String),
    );
  }
}

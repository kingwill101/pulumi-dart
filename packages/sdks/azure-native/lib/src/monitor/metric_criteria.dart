// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_dimension.dart';

/// Criterion to filter metrics.
class MetricCriteria {
  /// Specifies the type of threshold criteria
  /// Expected value is 'StaticThresholdCriterion'.
  final String criterionType;
  /// List of dimension conditions.
  final List<MetricDimension>? dimensions;
  /// Name of the metric.
  final String metricName;
  /// Namespace of the metric.
  final String? metricNamespace;
  /// Name of the criteria.
  final String name;
  /// the criteria operator.
  final String operator;
  /// Allows creating an alert rule on a custom metric that isn't yet emitted, by causing the metric validation to be skipped.
  final bool? skipMetricValidation;
  /// the criteria threshold value that activates the alert.
  final double threshold;
  /// the criteria time aggregation types.
  final String timeAggregation;

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
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<MetricDimension, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
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
      criterionType: map['criterionType'] as String,
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<MetricDimension>(map['dimensions'], (value) => MetricDimension.fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] as String,
      metricNamespace: map['metricNamespace'] == null ? null : map['metricNamespace'] as String,
      name: map['name'] as String,
      operator: map['operator'] as String,
      skipMetricValidation: map['skipMetricValidation'] == null ? null : map['skipMetricValidation'] as bool,
      threshold: map['threshold'] as double,
      timeAggregation: map['timeAggregation'] as String,
    );
  }
}


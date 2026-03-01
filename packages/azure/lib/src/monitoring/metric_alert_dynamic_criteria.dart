// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_alert_dynamic_criteria_dimension.dart';

class MetricAlertDynamicCriteria {
  /// The statistic that runs over the metric values. Possible values are `Average`, `Count`, `Minimum`, `Maximum` and `Total`.
  final String aggregation;
  /// The extent of deviation required to trigger an alert. Possible values are `Low`, `Medium` and `High`.
  final String alertSensitivity;
  /// One or more `dimension` blocks as defined below.
  final List<MetricAlertDynamicCriteriaDimension>? dimensions;
  /// The number of violations to trigger an alert. Should be smaller or equal to `evaluation_total_count`. Defaults to `4`.
  final int? evaluationFailureCount;
  /// The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (`window_size`) and the selected number of aggregated points. Defaults to `4`.
  final int? evaluationTotalCount;
  /// The [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) date from which to start learning the metric historical data and calculate the dynamic thresholds.
  final String? ignoreDataBefore;
  /// One of the metric names to be monitored.
  final String metricName;
  /// One of the metric namespaces to be monitored.
  final String metricNamespace;
  /// The criteria operator. Possible values are `LessThan`, `GreaterThan` and `GreaterOrLessThan`.
  final String operator;
  /// Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted?
  final bool? skipMetricValidation;

  /// Creates a new [MetricAlertDynamicCriteria].
  /// [aggregation] The statistic that runs over the metric values. Possible values are `Average`, `Count`, `Minimum`, `Maximum` and `Total`.
  /// [alertSensitivity] The extent of deviation required to trigger an alert. Possible values are `Low`, `Medium` and `High`.
  /// [dimensions] One or more `dimension` blocks as defined below.
  /// [evaluationFailureCount] The number of violations to trigger an alert. Should be smaller or equal to `evaluation_total_count`. Defaults to `4`.
  /// [evaluationTotalCount] The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity (`window_size`) and the selected number of aggregated points. Defaults to `4`.
  /// [ignoreDataBefore] The [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) date from which to start learning the metric historical data and calculate the dynamic thresholds.
  /// [metricName] One of the metric names to be monitored.
  /// [metricNamespace] One of the metric namespaces to be monitored.
  /// [operator] The criteria operator. Possible values are `LessThan`, `GreaterThan` and `GreaterOrLessThan`.
  /// [skipMetricValidation] Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted?
  MetricAlertDynamicCriteria({
    required this.aggregation,
    required this.alertSensitivity,
    this.dimensions,
    this.evaluationFailureCount,
    this.evaluationTotalCount,
    this.ignoreDataBefore,
    required this.metricName,
    required this.metricNamespace,
    required this.operator,
    this.skipMetricValidation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation': aggregation,
      'alertSensitivity': alertSensitivity,
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<MetricAlertDynamicCriteriaDimension, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
      'evaluationFailureCount': ?evaluationFailureCount,
      'evaluationTotalCount': ?evaluationTotalCount,
      'ignoreDataBefore': ?ignoreDataBefore,
      'metricName': metricName,
      'metricNamespace': metricNamespace,
      'operator': operator,
      'skipMetricValidation': ?skipMetricValidation,
    };
  }

  factory MetricAlertDynamicCriteria.fromMap(Map<String, dynamic> map) {
    return MetricAlertDynamicCriteria(
      aggregation: map['aggregation'] as String,
      alertSensitivity: map['alertSensitivity'] as String,
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<MetricAlertDynamicCriteriaDimension>(map['dimensions'], (value) => MetricAlertDynamicCriteriaDimension.fromMap((value as Map).cast<String, dynamic>())),
      evaluationFailureCount: map['evaluationFailureCount'] == null ? null : map['evaluationFailureCount'] as int,
      evaluationTotalCount: map['evaluationTotalCount'] == null ? null : map['evaluationTotalCount'] as int,
      ignoreDataBefore: map['ignoreDataBefore'] == null ? null : map['ignoreDataBefore'] as String,
      metricName: map['metricName'] as String,
      metricNamespace: map['metricNamespace'] as String,
      operator: map['operator'] as String,
      skipMetricValidation: map['skipMetricValidation'] == null ? null : map['skipMetricValidation'] as bool,
    );
  }
}


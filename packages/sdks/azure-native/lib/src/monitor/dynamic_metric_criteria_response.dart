// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_threshold_failing_periods_response.dart';
import 'metric_dimension_response.dart';

/// Criterion for dynamic threshold.
class DynamicMetricCriteriaResponse {
  /// The extent of deviation required to trigger an alert. This will affect how tight the threshold is to the metric series pattern.
  final String alertSensitivity;
  /// Specifies the type of threshold criteria
  /// Expected value is 'DynamicThresholdCriterion'.
  final String criterionType;
  /// List of dimension conditions.
  final List<MetricDimensionResponse>? dimensions;
  /// The minimum number of violations required within the selected lookback time window required to raise an alert.
  final DynamicThresholdFailingPeriodsResponse failingPeriods;
  /// Use this option to set the date from which to start learning the metric historical data and calculate the dynamic thresholds (in ISO8601 format)
  final String? ignoreDataBefore;
  /// Name of the metric.
  final String metricName;
  /// Namespace of the metric.
  final String? metricNamespace;
  /// Name of the criteria.
  final String name;
  /// The operator used to compare the metric value against the threshold.
  final String operator;
  /// Allows creating an alert rule on a custom metric that isn't yet emitted, by causing the metric validation to be skipped.
  final bool? skipMetricValidation;
  /// the criteria time aggregation types.
  final String timeAggregation;

  /// Creates a new [DynamicMetricCriteriaResponse].
  /// [alertSensitivity] The extent of deviation required to trigger an alert. This will affect how tight the threshold is to the metric series pattern.
  /// [criterionType] Specifies the type of threshold criteria
  /// [dimensions] List of dimension conditions.
  /// [failingPeriods] The minimum number of violations required within the selected lookback time window required to raise an alert.
  /// [ignoreDataBefore] Use this option to set the date from which to start learning the metric historical data and calculate the dynamic thresholds (in ISO8601 format)
  /// [metricName] Name of the metric.
  /// [metricNamespace] Namespace of the metric.
  /// [name] Name of the criteria.
  /// [operator] The operator used to compare the metric value against the threshold.
  /// [skipMetricValidation] Allows creating an alert rule on a custom metric that isn't yet emitted, by causing the metric validation to be skipped.
  /// [timeAggregation] the criteria time aggregation types.
  DynamicMetricCriteriaResponse({
    required this.alertSensitivity,
    required this.criterionType,
    this.dimensions,
    required this.failingPeriods,
    this.ignoreDataBefore,
    required this.metricName,
    this.metricNamespace,
    required this.name,
    required this.operator,
    this.skipMetricValidation,
    required this.timeAggregation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertSensitivity': alertSensitivity,
      'criterionType': criterionType,
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<MetricDimensionResponse, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
      'failingPeriods': failingPeriods.toMap(),
      'ignoreDataBefore': ?ignoreDataBefore,
      'metricName': metricName,
      'metricNamespace': ?metricNamespace,
      'name': name,
      'operator': operator,
      'skipMetricValidation': ?skipMetricValidation,
      'timeAggregation': timeAggregation,
    };
  }

  factory DynamicMetricCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return DynamicMetricCriteriaResponse(
      alertSensitivity: map['alertSensitivity'] as String,
      criterionType: map['criterionType'] as String,
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<MetricDimensionResponse>(map['dimensions'], (value) => MetricDimensionResponse.fromMap((value as Map).cast<String, dynamic>())),
      failingPeriods: DynamicThresholdFailingPeriodsResponse.fromMap((map['failingPeriods'] as Map).cast<String, dynamic>()),
      ignoreDataBefore: map['ignoreDataBefore'] == null ? null : map['ignoreDataBefore'] as String,
      metricName: map['metricName'] as String,
      metricNamespace: map['metricNamespace'] == null ? null : map['metricNamespace'] as String,
      name: map['name'] as String,
      operator: map['operator'] as String,
      skipMetricValidation: map['skipMetricValidation'] == null ? null : map['skipMetricValidation'] as bool,
      timeAggregation: map['timeAggregation'] as String,
    );
  }
}


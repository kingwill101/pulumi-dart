// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_threshold_failing_periods_response.dart';
import 'metric_dimension_response.dart';

/// Criterion for dynamic threshold.
class DynamicMetricCriteriaResponse {
  /// The extent of deviation required to trigger an alert. This will affect how tight the threshold is to the metric series pattern.
  final pulumi.Input<String> alertSensitivity;
  /// Specifies the type of threshold criteria
  /// Expected value is 'DynamicThresholdCriterion'.
  final pulumi.Input<String> criterionType;
  /// List of dimension conditions.
  final pulumi.Input<List<MetricDimensionResponse>>? dimensions;
  /// The minimum number of violations required within the selected lookback time window required to raise an alert.
  final pulumi.Input<DynamicThresholdFailingPeriodsResponse> failingPeriods;
  /// Use this option to set the date from which to start learning the metric historical data and calculate the dynamic thresholds (in ISO8601 format)
  final pulumi.Input<String>? ignoreDataBefore;
  /// Name of the metric.
  final pulumi.Input<String> metricName;
  /// Namespace of the metric.
  final pulumi.Input<String>? metricNamespace;
  /// Name of the criteria.
  final pulumi.Input<String> name;
  /// The operator used to compare the metric value against the threshold.
  final pulumi.Input<String> operator;
  /// Allows creating an alert rule on a custom metric that isn't yet emitted, by causing the metric validation to be skipped.
  final pulumi.Input<bool>? skipMetricValidation;
  /// the criteria time aggregation types.
  final pulumi.Input<String> timeAggregation;

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
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<MetricDimensionResponse>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<MetricDimensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failingPeriods': pulumi.Input.mapInputValue<DynamicThresholdFailingPeriodsResponse, Map<String, dynamic>>(failingPeriods, (value) => value.toMap()),
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
      alertSensitivity: (map['alertSensitivity'] as String).input(),
      criterionType: (map['criterionType'] as String).input(),
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<MetricDimensionResponse>(map['dimensions']!, (value) => MetricDimensionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      failingPeriods: (DynamicThresholdFailingPeriodsResponse.fromMap((map['failingPeriods'] as Map).cast<String, dynamic>())).input(),
      ignoreDataBefore: map['ignoreDataBefore'] == null ? null : (map['ignoreDataBefore']! as String).input(),
      metricName: (map['metricName'] as String).input(),
      metricNamespace: map['metricNamespace'] == null ? null : (map['metricNamespace']! as String).input(),
      name: (map['name'] as String).input(),
      operator: (map['operator'] as String).input(),
      skipMetricValidation: map['skipMetricValidation'] == null ? null : (map['skipMetricValidation']! as bool).input(),
      timeAggregation: (map['timeAggregation'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_threshold_failing_periods.dart';
import 'metric_dimension.dart';

/// Criterion for dynamic threshold.
class DynamicMetricCriteria {
  /// The extent of deviation required to trigger an alert. This will affect how tight the threshold is to the metric series pattern.
  final pulumi.Input<dynamic> alertSensitivity;
  /// Specifies the type of threshold criteria
  /// Expected value is 'DynamicThresholdCriterion'.
  final pulumi.Input<String> criterionType;
  /// List of dimension conditions.
  final pulumi.Input<List<MetricDimension>?>? dimensions;
  /// The minimum number of violations required within the selected lookback time window required to raise an alert.
  final pulumi.Input<DynamicThresholdFailingPeriods> failingPeriods;
  /// Use this option to set the date from which to start learning the metric historical data and calculate the dynamic thresholds (in ISO8601 format)
  final pulumi.Input<String?>? ignoreDataBefore;
  /// Name of the metric.
  final pulumi.Input<String> metricName;
  /// Namespace of the metric.
  final pulumi.Input<String?>? metricNamespace;
  /// Name of the criteria.
  final pulumi.Input<String> name;
  /// The operator used to compare the metric value against the threshold.
  final pulumi.Input<dynamic> operator;
  /// Allows creating an alert rule on a custom metric that isn't yet emitted, by causing the metric validation to be skipped.
  final pulumi.Input<bool?>? skipMetricValidation;
  /// the criteria time aggregation types.
  final pulumi.Input<dynamic> timeAggregation;

  /// Creates a new [DynamicMetricCriteria].
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
  const DynamicMetricCriteria({
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
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<MetricDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<MetricDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failingPeriods': pulumi.Input.mapInputValue<DynamicThresholdFailingPeriods, Map<String, dynamic>>(failingPeriods, (value) => value.toMap()),
      'ignoreDataBefore': ?ignoreDataBefore,
      'metricName': metricName,
      'metricNamespace': ?metricNamespace,
      'name': name,
      'operator': operator,
      'skipMetricValidation': ?skipMetricValidation,
      'timeAggregation': timeAggregation,
    };
  }

  factory DynamicMetricCriteria.fromMap(Map<String, dynamic> map) {
    return DynamicMetricCriteria(
      alertSensitivity: pulumi.Input.fromValue(map['alertSensitivity']),
      criterionType: pulumi.Input.fromValue(map['criterionType'] as String),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetricDimension>(guardedValue, (value) => MetricDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      failingPeriods: pulumi.Input.fromValue(DynamicThresholdFailingPeriods.fromMap((map['failingPeriods']! as Map).cast<String, dynamic>())),
      ignoreDataBefore: (() { final guardedValue = map['ignoreDataBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricNamespace: (() { final guardedValue = map['metricNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: pulumi.Input.fromValue(map['operator']),
      skipMetricValidation: (() { final guardedValue = map['skipMetricValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeAggregation: pulumi.Input.fromValue(map['timeAggregation']),
    );
  }
}

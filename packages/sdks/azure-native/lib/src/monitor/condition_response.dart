// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response_failing_periods.dart';
import 'dimension_response.dart';

/// A condition of the scheduled query rule.
class ConditionResponse {
  /// The extent of deviation required to trigger an alert. Allowed values are 'Low', 'Medium' and 'High'. This will affect how tight the threshold is to the metric series pattern. Relevant only for dynamic threshold rules of the kind LogAlert.
  final pulumi.Input<String>? alertSensitivity;
  /// Specifies the type of threshold criteria
  final pulumi.Input<String>? criterionType;
  /// List of Dimensions conditions
  final pulumi.Input<List<DimensionResponse>>? dimensions;
  /// The minimum number of violations required within the selected lookback time window required to raise an alert. Relevant only for rules of the kind LogAlert.
  final pulumi.Input<ConditionResponseFailingPeriods>? failingPeriods;
  /// Use this option to set the date from which to start learning the metric historical data and calculate the dynamic thresholds (in ISO8601 format). Relevant only for dynamic threshold rules of the kind LogAlert.
  final pulumi.Input<String>? ignoreDataBefore;
  /// The column containing the metric measure number. Relevant only for rules of the kind LogAlert.
  final pulumi.Input<String>? metricMeasureColumn;
  /// The name of the metric to be sent. Relevant and required only for rules of the kind LogToMetric.
  final pulumi.Input<String>? metricName;
  /// The minimum results count that should be found for triggering an alert. Relevant only for rules of the kind SimpleLogAlert.
  final pulumi.Input<double>? minRecurrenceCount;
  /// The criteria operator. Relevant and required only for rules of the kind LogAlert.
  final pulumi.Input<String>? operator;
  /// Log query alert
  final pulumi.Input<String>? query;
  /// The column containing the resource id. The content of the column must be a uri formatted as resource id. Relevant only for rules of the kind LogAlert.
  final pulumi.Input<String>? resourceIdColumn;
  /// the criteria threshold value that activates the alert. Relevant and required only for static threshold rules of the kind LogAlert.
  final pulumi.Input<double>? threshold;
  /// Aggregation type. Relevant and required only for rules of the kind LogAlert.
  final pulumi.Input<String>? timeAggregation;

  /// Creates a new [ConditionResponse].
  /// [alertSensitivity] The extent of deviation required to trigger an alert. Allowed values are 'Low', 'Medium' and 'High'. This will affect how tight the threshold is to the metric series pattern. Relevant only for dynamic threshold rules of the kind LogAlert.
  /// [criterionType] Specifies the type of threshold criteria
  /// [dimensions] List of Dimensions conditions
  /// [failingPeriods] The minimum number of violations required within the selected lookback time window required to raise an alert. Relevant only for rules of the kind LogAlert.
  /// [ignoreDataBefore] Use this option to set the date from which to start learning the metric historical data and calculate the dynamic thresholds (in ISO8601 format). Relevant only for dynamic threshold rules of the kind LogAlert.
  /// [metricMeasureColumn] The column containing the metric measure number. Relevant only for rules of the kind LogAlert.
  /// [metricName] The name of the metric to be sent. Relevant and required only for rules of the kind LogToMetric.
  /// [minRecurrenceCount] The minimum results count that should be found for triggering an alert. Relevant only for rules of the kind SimpleLogAlert.
  /// [operator] The criteria operator. Relevant and required only for rules of the kind LogAlert.
  /// [query] Log query alert
  /// [resourceIdColumn] The column containing the resource id. The content of the column must be a uri formatted as resource id. Relevant only for rules of the kind LogAlert.
  /// [threshold] the criteria threshold value that activates the alert. Relevant and required only for static threshold rules of the kind LogAlert.
  /// [timeAggregation] Aggregation type. Relevant and required only for rules of the kind LogAlert.
  ConditionResponse({
    this.alertSensitivity,
    this.criterionType,
    this.dimensions,
    this.failingPeriods,
    this.ignoreDataBefore,
    this.metricMeasureColumn,
    this.metricName,
    this.minRecurrenceCount,
    this.operator,
    this.query,
    this.resourceIdColumn,
    this.threshold,
    this.timeAggregation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertSensitivity': ?alertSensitivity,
      'criterionType': ?criterionType,
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<DimensionResponse>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<DimensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failingPeriods': ?pulumi.Input.mapOptionalInputValue<ConditionResponseFailingPeriods, Map<String, dynamic>>(failingPeriods, (value) => value.toMap()),
      'ignoreDataBefore': ?ignoreDataBefore,
      'metricMeasureColumn': ?metricMeasureColumn,
      'metricName': ?metricName,
      'minRecurrenceCount': ?minRecurrenceCount,
      'operator': ?operator,
      'query': ?query,
      'resourceIdColumn': ?resourceIdColumn,
      'threshold': ?threshold,
      'timeAggregation': ?timeAggregation,
    };
  }

  factory ConditionResponse.fromMap(Map<String, dynamic> map) {
    return ConditionResponse(
      alertSensitivity: map['alertSensitivity'] == null ? null : (map['alertSensitivity']! as String).input(),
      criterionType: map['criterionType'] == null ? null : (map['criterionType']! as String).input(),
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<DimensionResponse>(map['dimensions']!, (value) => DimensionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      failingPeriods: map['failingPeriods'] == null ? null : (ConditionResponseFailingPeriods.fromMap((map['failingPeriods']! as Map).cast<String, dynamic>())).input(),
      ignoreDataBefore: map['ignoreDataBefore'] == null ? null : (map['ignoreDataBefore']! as String).input(),
      metricMeasureColumn: map['metricMeasureColumn'] == null ? null : (map['metricMeasureColumn']! as String).input(),
      metricName: map['metricName'] == null ? null : (map['metricName']! as String).input(),
      minRecurrenceCount: map['minRecurrenceCount'] == null ? null : (map['minRecurrenceCount']! as double).input(),
      operator: map['operator'] == null ? null : (map['operator']! as String).input(),
      query: map['query'] == null ? null : (map['query']! as String).input(),
      resourceIdColumn: map['resourceIdColumn'] == null ? null : (map['resourceIdColumn']! as String).input(),
      threshold: map['threshold'] == null ? null : (map['threshold']! as double).input(),
      timeAggregation: map['timeAggregation'] == null ? null : (map['timeAggregation']! as String).input(),
    );
  }
}


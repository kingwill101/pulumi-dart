// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_failing_periods.dart';
import 'dimension.dart';

/// A condition of the scheduled query rule.
class Condition {
  /// The extent of deviation required to trigger an alert. Allowed values are 'Low', 'Medium' and 'High'. This will affect how tight the threshold is to the metric series pattern. Relevant only for dynamic threshold rules of the kind LogAlert.
  final pulumi.Input<String>? alertSensitivity;
  /// Specifies the type of threshold criteria
  final pulumi.Input<String>? criterionType;
  /// List of Dimensions conditions
  final pulumi.Input<List<Dimension>>? dimensions;
  /// The minimum number of violations required within the selected lookback time window required to raise an alert. Relevant only for rules of the kind LogAlert.
  final pulumi.Input<ConditionFailingPeriods>? failingPeriods;
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

  /// Creates a new [Condition].
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
  const Condition({
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
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<Dimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<Dimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failingPeriods': ?pulumi.Input.mapOptionalInputValue<ConditionFailingPeriods, Map<String, dynamic>>(failingPeriods, (value) => value.toMap()),
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

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      alertSensitivity: (() { final guardedValue = map['alertSensitivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      criterionType: (() { final guardedValue = map['criterionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Dimension>(guardedValue, (value) => Dimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      failingPeriods: (() { final guardedValue = map['failingPeriods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionFailingPeriods.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ignoreDataBefore: (() { final guardedValue = map['ignoreDataBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricMeasureColumn: (() { final guardedValue = map['metricMeasureColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minRecurrenceCount: (() { final guardedValue = map['minRecurrenceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceIdColumn: (() { final guardedValue = map['resourceIdColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      timeAggregation: (() { final guardedValue = map['timeAggregation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

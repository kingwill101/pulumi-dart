// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_rule.dart';

/// Azure Resource Metric Signal Definition properties
class ResourceMetricSignalDefinitionProperties {
  /// Type of aggregation to apply to the metric
  final pulumi.Input<dynamic> aggregationType;
  /// Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  final pulumi.Input<String?>? dataUnit;
  /// Optional: Dimension to split by
  final pulumi.Input<String?>? dimension;
  /// Optional: Dimension filter to apply to the dimension. Must only be set if also Dimension is set.
  final pulumi.Input<String?>? dimensionFilter;
  /// Display name
  final pulumi.Input<String?>? displayName;
  /// Evaluation rules for the signal definition
  final pulumi.Input<EvaluationRule> evaluationRules;
  /// Name of the metric
  final pulumi.Input<String> metricName;
  /// Metric namespace
  final pulumi.Input<String> metricNamespace;
  /// Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  final pulumi.Input<dynamic>? refreshInterval;
  /// Supported signal kinds as discriminator
  /// Expected value is 'AzureResourceMetric'.
  final pulumi.Input<String> signalKind;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>?>? tags;
  /// Time range of signal. ISO duration format like PT10M.
  final pulumi.Input<String> timeGrain;

  /// Creates a new [ResourceMetricSignalDefinitionProperties].
  /// [aggregationType] Type of aggregation to apply to the metric
  /// [dataUnit] Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  /// [dimension] Optional: Dimension to split by
  /// [dimensionFilter] Optional: Dimension filter to apply to the dimension. Must only be set if also Dimension is set.
  /// [displayName] Display name
  /// [evaluationRules] Evaluation rules for the signal definition
  /// [metricName] Name of the metric
  /// [metricNamespace] Metric namespace
  /// [refreshInterval] Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  /// [signalKind] Supported signal kinds as discriminator
  /// [tags] Optional set of labels (key-value pairs)
  /// [timeGrain] Time range of signal. ISO duration format like PT10M.
  ResourceMetricSignalDefinitionProperties({
    required this.aggregationType,
    this.dataUnit,
    this.dimension,
    this.dimensionFilter,
    this.displayName,
    required this.evaluationRules,
    required this.metricName,
    required this.metricNamespace,
    pulumi.Input<dynamic>? refreshInterval,
    required this.signalKind,
    this.tags,
    required this.timeGrain,
  }) : refreshInterval = refreshInterval ?? pulumi.Input.fromValue('PT1M');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationType': aggregationType,
      'dataUnit': ?dataUnit,
      'dimension': ?dimension,
      'dimensionFilter': ?dimensionFilter,
      'displayName': ?displayName,
      'evaluationRules': pulumi.Input.mapInputValue<EvaluationRule, Map<String, dynamic>>(evaluationRules, (value) => value.toMap()),
      'metricName': metricName,
      'metricNamespace': metricNamespace,
      'refreshInterval': ?refreshInterval,
      'signalKind': signalKind,
      'tags': ?tags,
      'timeGrain': timeGrain,
    };
  }

  factory ResourceMetricSignalDefinitionProperties.fromMap(Map<String, dynamic> map) {
    return ResourceMetricSignalDefinitionProperties(
      aggregationType: pulumi.Input.fromValue(map['aggregationType']),
      dataUnit: (() { final guardedValue = map['dataUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimensionFilter: (() { final guardedValue = map['dimensionFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationRules: pulumi.Input.fromValue(EvaluationRule.fromMap((map['evaluationRules']! as Map).cast<String, dynamic>())),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricNamespace: pulumi.Input.fromValue(map['metricNamespace'] as String),
      refreshInterval: (() { final guardedValue = map['refreshInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      signalKind: pulumi.Input.fromValue(map['signalKind'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeGrain: pulumi.Input.fromValue(map['timeGrain'] as String),
    );
  }
}

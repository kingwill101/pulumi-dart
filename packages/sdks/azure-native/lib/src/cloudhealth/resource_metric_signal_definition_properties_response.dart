// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_rule_response.dart';

/// Azure Resource Metric Signal Definition properties
class ResourceMetricSignalDefinitionPropertiesResponse {
  /// Type of aggregation to apply to the metric
  final pulumi.Input<String> aggregationType;
  /// Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  final pulumi.Input<String>? dataUnit;
  /// Date when the signal definition was (soft-)deleted
  final pulumi.Input<String> deletionDate;
  /// Optional: Dimension to split by
  final pulumi.Input<String>? dimension;
  /// Optional: Dimension filter to apply to the dimension. Must only be set if also Dimension is set.
  final pulumi.Input<String>? dimensionFilter;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Evaluation rules for the signal definition
  final pulumi.Input<EvaluationRuleResponse> evaluationRules;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the metric
  final pulumi.Input<String> metricName;
  /// Metric namespace
  final pulumi.Input<String> metricNamespace;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  final pulumi.Input<String>? refreshInterval;
  /// Supported signal kinds as discriminator
  /// Expected value is 'AzureResourceMetric'.
  final pulumi.Input<String> signalKind;
  /// Time range of signal. ISO duration format like PT10M.
  final pulumi.Input<String> timeGrain;

  /// Creates a new [ResourceMetricSignalDefinitionPropertiesResponse].
  /// [aggregationType] Type of aggregation to apply to the metric
  /// [dataUnit] Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  /// [deletionDate] Date when the signal definition was (soft-)deleted
  /// [dimension] Optional: Dimension to split by
  /// [dimensionFilter] Optional: Dimension filter to apply to the dimension. Must only be set if also Dimension is set.
  /// [displayName] Display name
  /// [evaluationRules] Evaluation rules for the signal definition
  /// [labels] Optional set of labels (key-value pairs)
  /// [metricName] Name of the metric
  /// [metricNamespace] Metric namespace
  /// [provisioningState] The status of the last operation.
  /// [refreshInterval] Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  /// [signalKind] Supported signal kinds as discriminator
  /// [timeGrain] Time range of signal. ISO duration format like PT10M.
  const ResourceMetricSignalDefinitionPropertiesResponse({
    required this.aggregationType,
    this.dataUnit,
    required this.deletionDate,
    this.dimension,
    this.dimensionFilter,
    this.displayName,
    required this.evaluationRules,
    this.labels,
    required this.metricName,
    required this.metricNamespace,
    required this.provisioningState,
    this.refreshInterval,
    required this.signalKind,
    required this.timeGrain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationType': aggregationType,
      'dataUnit': ?dataUnit,
      'deletionDate': deletionDate,
      'dimension': ?dimension,
      'dimensionFilter': ?dimensionFilter,
      'displayName': ?displayName,
      'evaluationRules': pulumi.Input.mapInputValue<EvaluationRuleResponse, Map<String, dynamic>>(evaluationRules, (value) => value.toMap()),
      'labels': ?labels,
      'metricName': metricName,
      'metricNamespace': metricNamespace,
      'provisioningState': provisioningState,
      'refreshInterval': ?refreshInterval,
      'signalKind': signalKind,
      'timeGrain': timeGrain,
    };
  }

  factory ResourceMetricSignalDefinitionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ResourceMetricSignalDefinitionPropertiesResponse(
      aggregationType: pulumi.Input.fromValue(map['aggregationType'] as String),
      dataUnit: (() { final guardedValue = map['dataUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionDate: pulumi.Input.fromValue(map['deletionDate'] as String),
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimensionFilter: (() { final guardedValue = map['dimensionFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationRules: pulumi.Input.fromValue(EvaluationRuleResponse.fromMap((map['evaluationRules']! as Map).cast<String, dynamic>())),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricNamespace: pulumi.Input.fromValue(map['metricNamespace'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      refreshInterval: (() { final guardedValue = map['refreshInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signalKind: pulumi.Input.fromValue(map['signalKind'] as String),
      timeGrain: pulumi.Input.fromValue(map['timeGrain'] as String),
    );
  }
}

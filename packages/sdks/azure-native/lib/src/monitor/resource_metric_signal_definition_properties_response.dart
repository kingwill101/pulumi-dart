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
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? tags;
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
  /// [metricName] Name of the metric
  /// [metricNamespace] Metric namespace
  /// [provisioningState] The status of the last operation.
  /// [refreshInterval] Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  /// [signalKind] Supported signal kinds as discriminator
  /// [tags] Optional set of labels (key-value pairs)
  /// [timeGrain] Time range of signal. ISO duration format like PT10M.
  ResourceMetricSignalDefinitionPropertiesResponse({
    required this.aggregationType,
    this.dataUnit,
    required this.deletionDate,
    this.dimension,
    this.dimensionFilter,
    this.displayName,
    required this.evaluationRules,
    required this.metricName,
    required this.metricNamespace,
    required this.provisioningState,
    this.refreshInterval,
    required this.signalKind,
    this.tags,
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
      'metricName': metricName,
      'metricNamespace': metricNamespace,
      'provisioningState': provisioningState,
      'refreshInterval': ?refreshInterval,
      'signalKind': signalKind,
      'tags': ?tags,
      'timeGrain': timeGrain,
    };
  }

  factory ResourceMetricSignalDefinitionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ResourceMetricSignalDefinitionPropertiesResponse(
      aggregationType: (map['aggregationType'] as String).input(),
      dataUnit: map['dataUnit'] == null ? null : (map['dataUnit']! as String).input(),
      deletionDate: (map['deletionDate'] as String).input(),
      dimension: map['dimension'] == null ? null : (map['dimension']! as String).input(),
      dimensionFilter: map['dimensionFilter'] == null ? null : (map['dimensionFilter']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      evaluationRules: (EvaluationRuleResponse.fromMap((map['evaluationRules'] as Map).cast<String, dynamic>())).input(),
      metricName: (map['metricName'] as String).input(),
      metricNamespace: (map['metricNamespace'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      refreshInterval: map['refreshInterval'] == null ? null : (map['refreshInterval']! as String).input(),
      signalKind: (map['signalKind'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      timeGrain: (map['timeGrain'] as String).input(),
    );
  }
}


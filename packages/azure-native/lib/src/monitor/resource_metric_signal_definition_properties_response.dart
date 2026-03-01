// ignore_for_file: unused_element, unnecessary_cast

import 'evaluation_rule_response.dart';

/// Azure Resource Metric Signal Definition properties
class ResourceMetricSignalDefinitionPropertiesResponse {
  /// Type of aggregation to apply to the metric
  final String aggregationType;
  /// Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  final String? dataUnit;
  /// Date when the signal definition was (soft-)deleted
  final String deletionDate;
  /// Optional: Dimension to split by
  final String? dimension;
  /// Optional: Dimension filter to apply to the dimension. Must only be set if also Dimension is set.
  final String? dimensionFilter;
  /// Display name
  final String? displayName;
  /// Evaluation rules for the signal definition
  final EvaluationRuleResponse evaluationRules;
  /// Name of the metric
  final String metricName;
  /// Metric namespace
  final String metricNamespace;
  /// The status of the last operation.
  final String provisioningState;
  /// Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  final String? refreshInterval;
  /// Supported signal kinds as discriminator
  /// Expected value is 'AzureResourceMetric'.
  final String signalKind;
  /// Optional set of labels (key-value pairs)
  final Map<String, String>? tags;
  /// Time range of signal. ISO duration format like PT10M.
  final String timeGrain;

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
      'evaluationRules': evaluationRules.toMap(),
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
      aggregationType: map['aggregationType'] as String,
      dataUnit: map['dataUnit'] == null ? null : map['dataUnit'] as String,
      deletionDate: map['deletionDate'] as String,
      dimension: map['dimension'] == null ? null : map['dimension'] as String,
      dimensionFilter: map['dimensionFilter'] == null ? null : map['dimensionFilter'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      evaluationRules: EvaluationRuleResponse.fromMap((map['evaluationRules'] as Map).cast<String, dynamic>()),
      metricName: map['metricName'] as String,
      metricNamespace: map['metricNamespace'] as String,
      provisioningState: map['provisioningState'] as String,
      refreshInterval: map['refreshInterval'] == null ? null : map['refreshInterval'] as String,
      signalKind: map['signalKind'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeGrain: map['timeGrain'] as String,
    );
  }
}


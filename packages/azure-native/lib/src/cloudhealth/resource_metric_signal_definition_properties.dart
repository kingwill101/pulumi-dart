// ignore_for_file: unused_element, unnecessary_cast

import 'evaluation_rule.dart';

/// Azure Resource Metric Signal Definition properties
class ResourceMetricSignalDefinitionProperties {
  /// Type of aggregation to apply to the metric
  final String aggregationType;
  /// Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  final String? dataUnit;
  /// Optional: Dimension to split by
  final String? dimension;
  /// Optional: Dimension filter to apply to the dimension. Must only be set if also Dimension is set.
  final String? dimensionFilter;
  /// Display name
  final String? displayName;
  /// Evaluation rules for the signal definition
  final EvaluationRule evaluationRules;
  /// Optional set of labels (key-value pairs)
  final Map<String, String>? labels;
  /// Name of the metric
  final String metricName;
  /// Metric namespace
  final String metricNamespace;
  /// Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  final String? refreshInterval;
  /// Supported signal kinds as discriminator
  /// Expected value is 'AzureResourceMetric'.
  final String signalKind;
  /// Time range of signal. ISO duration format like PT10M.
  final String timeGrain;

  /// Creates a new [ResourceMetricSignalDefinitionProperties].
  /// [aggregationType] Type of aggregation to apply to the metric
  /// [dataUnit] Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  /// [dimension] Optional: Dimension to split by
  /// [dimensionFilter] Optional: Dimension filter to apply to the dimension. Must only be set if also Dimension is set.
  /// [displayName] Display name
  /// [evaluationRules] Evaluation rules for the signal definition
  /// [labels] Optional set of labels (key-value pairs)
  /// [metricName] Name of the metric
  /// [metricNamespace] Metric namespace
  /// [refreshInterval] Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  /// [signalKind] Supported signal kinds as discriminator
  /// [timeGrain] Time range of signal. ISO duration format like PT10M.
  ResourceMetricSignalDefinitionProperties({
    required this.aggregationType,
    this.dataUnit,
    this.dimension,
    this.dimensionFilter,
    this.displayName,
    required this.evaluationRules,
    this.labels,
    required this.metricName,
    required this.metricNamespace,
    this.refreshInterval,
    required this.signalKind,
    required this.timeGrain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationType': aggregationType,
      'dataUnit': ?dataUnit,
      'dimension': ?dimension,
      'dimensionFilter': ?dimensionFilter,
      'displayName': ?displayName,
      'evaluationRules': evaluationRules.toMap(),
      'labels': ?labels,
      'metricName': metricName,
      'metricNamespace': metricNamespace,
      'refreshInterval': ?refreshInterval,
      'signalKind': signalKind,
      'timeGrain': timeGrain,
    };
  }

  factory ResourceMetricSignalDefinitionProperties.fromMap(Map<String, dynamic> map) {
    return ResourceMetricSignalDefinitionProperties(
      aggregationType: map['aggregationType'] as String,
      dataUnit: map['dataUnit'] == null ? null : map['dataUnit'] as String,
      dimension: map['dimension'] == null ? null : map['dimension'] as String,
      dimensionFilter: map['dimensionFilter'] == null ? null : map['dimensionFilter'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      evaluationRules: EvaluationRule.fromMap((map['evaluationRules'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      metricName: map['metricName'] as String,
      metricNamespace: map['metricNamespace'] as String,
      refreshInterval: map['refreshInterval'] == null ? null : map['refreshInterval'] as String,
      signalKind: map['signalKind'] as String,
      timeGrain: map['timeGrain'] as String,
    );
  }
}


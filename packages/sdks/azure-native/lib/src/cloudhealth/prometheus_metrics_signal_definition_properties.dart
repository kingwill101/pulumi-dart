// ignore_for_file: unused_element, unnecessary_cast

import 'evaluation_rule.dart';

/// Prometheus Metrics Signal Definition properties
class PrometheusMetricsSignalDefinitionProperties {
  /// Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  final String? dataUnit;
  /// Display name
  final String? displayName;
  /// Evaluation rules for the signal definition
  final EvaluationRule evaluationRules;
  /// Optional set of labels (key-value pairs)
  final Map<String, String>? labels;
  /// Query text in PromQL syntax
  final String queryText;
  /// Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  final String? refreshInterval;
  /// Supported signal kinds as discriminator
  /// Expected value is 'PrometheusMetricsQuery'.
  final String signalKind;
  /// Time range of signal. ISO duration format like PT10M.
  final String? timeGrain;

  /// Creates a new [PrometheusMetricsSignalDefinitionProperties].
  /// [dataUnit] Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  /// [displayName] Display name
  /// [evaluationRules] Evaluation rules for the signal definition
  /// [labels] Optional set of labels (key-value pairs)
  /// [queryText] Query text in PromQL syntax
  /// [refreshInterval] Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  /// [signalKind] Supported signal kinds as discriminator
  /// [timeGrain] Time range of signal. ISO duration format like PT10M.
  PrometheusMetricsSignalDefinitionProperties({
    this.dataUnit,
    this.displayName,
    required this.evaluationRules,
    this.labels,
    required this.queryText,
    this.refreshInterval,
    required this.signalKind,
    this.timeGrain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataUnit': ?dataUnit,
      'displayName': ?displayName,
      'evaluationRules': evaluationRules.toMap(),
      'labels': ?labels,
      'queryText': queryText,
      'refreshInterval': ?refreshInterval,
      'signalKind': signalKind,
      'timeGrain': ?timeGrain,
    };
  }

  factory PrometheusMetricsSignalDefinitionProperties.fromMap(Map<String, dynamic> map) {
    return PrometheusMetricsSignalDefinitionProperties(
      dataUnit: map['dataUnit'] == null ? null : map['dataUnit'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      evaluationRules: EvaluationRule.fromMap((map['evaluationRules'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      queryText: map['queryText'] as String,
      refreshInterval: map['refreshInterval'] == null ? null : map['refreshInterval'] as String,
      signalKind: map['signalKind'] as String,
      timeGrain: map['timeGrain'] == null ? null : map['timeGrain'] as String,
    );
  }
}


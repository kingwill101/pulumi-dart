// ignore_for_file: unused_element, unnecessary_cast

import 'evaluation_rule.dart';

/// Log Analytics Query Signal Definition properties
class LogAnalyticsQuerySignalDefinitionProperties {
  /// Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  final String? dataUnit;
  /// Display name
  final String? displayName;
  /// Evaluation rules for the signal definition
  final EvaluationRule evaluationRules;
  /// Query text in KQL syntax
  final String queryText;
  /// Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  final String? refreshInterval;
  /// Supported signal kinds as discriminator
  /// Expected value is 'LogAnalyticsQuery'.
  final String signalKind;
  /// Optional set of labels (key-value pairs)
  final Map<String, String>? tags;
  /// Time range of signal. ISO duration format like PT10M. If not specified, the KQL query must define a time range.
  final String? timeGrain;
  /// Name of the column in the result set to evaluate against the thresholds. Defaults to the first column in the result set if not specified. The column must be numeric.
  final String? valueColumnName;

  /// Creates a new [LogAnalyticsQuerySignalDefinitionProperties].
  /// [dataUnit] Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  /// [displayName] Display name
  /// [evaluationRules] Evaluation rules for the signal definition
  /// [queryText] Query text in KQL syntax
  /// [refreshInterval] Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  /// [signalKind] Supported signal kinds as discriminator
  /// [tags] Optional set of labels (key-value pairs)
  /// [timeGrain] Time range of signal. ISO duration format like PT10M. If not specified, the KQL query must define a time range.
  /// [valueColumnName] Name of the column in the result set to evaluate against the thresholds. Defaults to the first column in the result set if not specified. The column must be numeric.
  LogAnalyticsQuerySignalDefinitionProperties({
    this.dataUnit,
    this.displayName,
    required this.evaluationRules,
    required this.queryText,
    this.refreshInterval,
    required this.signalKind,
    this.tags,
    this.timeGrain,
    this.valueColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataUnit': ?dataUnit,
      'displayName': ?displayName,
      'evaluationRules': evaluationRules.toMap(),
      'queryText': queryText,
      'refreshInterval': ?refreshInterval,
      'signalKind': signalKind,
      'tags': ?tags,
      'timeGrain': ?timeGrain,
      'valueColumnName': ?valueColumnName,
    };
  }

  factory LogAnalyticsQuerySignalDefinitionProperties.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsQuerySignalDefinitionProperties(
      dataUnit: map['dataUnit'] == null ? null : map['dataUnit'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      evaluationRules: EvaluationRule.fromMap((map['evaluationRules'] as Map).cast<String, dynamic>()),
      queryText: map['queryText'] as String,
      refreshInterval: map['refreshInterval'] == null ? null : map['refreshInterval'] as String,
      signalKind: map['signalKind'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeGrain: map['timeGrain'] == null ? null : map['timeGrain'] as String,
      valueColumnName: map['valueColumnName'] == null ? null : map['valueColumnName'] as String,
    );
  }
}


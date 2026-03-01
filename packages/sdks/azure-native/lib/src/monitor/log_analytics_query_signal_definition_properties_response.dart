// ignore_for_file: unused_element, unnecessary_cast

import 'evaluation_rule_response.dart';

/// Log Analytics Query Signal Definition properties
class LogAnalyticsQuerySignalDefinitionPropertiesResponse {
  /// Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  final String? dataUnit;
  /// Date when the signal definition was (soft-)deleted
  final String deletionDate;
  /// Display name
  final String? displayName;
  /// Evaluation rules for the signal definition
  final EvaluationRuleResponse evaluationRules;
  /// The status of the last operation.
  final String provisioningState;
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

  /// Creates a new [LogAnalyticsQuerySignalDefinitionPropertiesResponse].
  /// [dataUnit] Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  /// [deletionDate] Date when the signal definition was (soft-)deleted
  /// [displayName] Display name
  /// [evaluationRules] Evaluation rules for the signal definition
  /// [provisioningState] The status of the last operation.
  /// [queryText] Query text in KQL syntax
  /// [refreshInterval] Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  /// [signalKind] Supported signal kinds as discriminator
  /// [tags] Optional set of labels (key-value pairs)
  /// [timeGrain] Time range of signal. ISO duration format like PT10M. If not specified, the KQL query must define a time range.
  /// [valueColumnName] Name of the column in the result set to evaluate against the thresholds. Defaults to the first column in the result set if not specified. The column must be numeric.
  LogAnalyticsQuerySignalDefinitionPropertiesResponse({
    this.dataUnit,
    required this.deletionDate,
    this.displayName,
    required this.evaluationRules,
    required this.provisioningState,
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
      'deletionDate': deletionDate,
      'displayName': ?displayName,
      'evaluationRules': evaluationRules.toMap(),
      'provisioningState': provisioningState,
      'queryText': queryText,
      'refreshInterval': ?refreshInterval,
      'signalKind': signalKind,
      'tags': ?tags,
      'timeGrain': ?timeGrain,
      'valueColumnName': ?valueColumnName,
    };
  }

  factory LogAnalyticsQuerySignalDefinitionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsQuerySignalDefinitionPropertiesResponse(
      dataUnit: map['dataUnit'] == null ? null : map['dataUnit'] as String,
      deletionDate: map['deletionDate'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      evaluationRules: EvaluationRuleResponse.fromMap((map['evaluationRules'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      queryText: map['queryText'] as String,
      refreshInterval: map['refreshInterval'] == null ? null : map['refreshInterval'] as String,
      signalKind: map['signalKind'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeGrain: map['timeGrain'] == null ? null : map['timeGrain'] as String,
      valueColumnName: map['valueColumnName'] == null ? null : map['valueColumnName'] as String,
    );
  }
}


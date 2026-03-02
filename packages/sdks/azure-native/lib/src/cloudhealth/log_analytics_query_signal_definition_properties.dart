// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_rule.dart';

/// Log Analytics Query Signal Definition properties
class LogAnalyticsQuerySignalDefinitionProperties {
  /// Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  final pulumi.Input<String>? dataUnit;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Evaluation rules for the signal definition
  final pulumi.Input<EvaluationRule> evaluationRules;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? labels;
  /// Query text in KQL syntax
  final pulumi.Input<String> queryText;
  /// Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  final pulumi.Input<String>? refreshInterval;
  /// Supported signal kinds as discriminator
  /// Expected value is 'LogAnalyticsQuery'.
  final pulumi.Input<String> signalKind;
  /// Time range of signal. ISO duration format like PT10M. If not specified, the KQL query must define a time range.
  final pulumi.Input<String>? timeGrain;
  /// Name of the column in the result set to evaluate against the thresholds. Defaults to the first column in the result set if not specified. The column must be numeric.
  final pulumi.Input<String>? valueColumnName;

  /// Creates a new [LogAnalyticsQuerySignalDefinitionProperties].
  /// [dataUnit] Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  /// [displayName] Display name
  /// [evaluationRules] Evaluation rules for the signal definition
  /// [labels] Optional set of labels (key-value pairs)
  /// [queryText] Query text in KQL syntax
  /// [refreshInterval] Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  /// [signalKind] Supported signal kinds as discriminator
  /// [timeGrain] Time range of signal. ISO duration format like PT10M. If not specified, the KQL query must define a time range.
  /// [valueColumnName] Name of the column in the result set to evaluate against the thresholds. Defaults to the first column in the result set if not specified. The column must be numeric.
  LogAnalyticsQuerySignalDefinitionProperties({
    this.dataUnit,
    this.displayName,
    required this.evaluationRules,
    this.labels,
    required this.queryText,
    this.refreshInterval,
    required this.signalKind,
    this.timeGrain,
    this.valueColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataUnit': ?dataUnit,
      'displayName': ?displayName,
      'evaluationRules': pulumi.Input.mapInputValue<EvaluationRule, Map<String, dynamic>>(evaluationRules, (value) => value.toMap()),
      'labels': ?labels,
      'queryText': queryText,
      'refreshInterval': ?refreshInterval,
      'signalKind': signalKind,
      'timeGrain': ?timeGrain,
      'valueColumnName': ?valueColumnName,
    };
  }

  factory LogAnalyticsQuerySignalDefinitionProperties.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsQuerySignalDefinitionProperties(
      dataUnit: map['dataUnit'] == null ? null : (map['dataUnit'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      evaluationRules: (EvaluationRule.fromMap((map['evaluationRules'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      queryText: (map['queryText'] as String).input(),
      refreshInterval: map['refreshInterval'] == null ? null : (map['refreshInterval'] as String).input(),
      signalKind: (map['signalKind'] as String).input(),
      timeGrain: map['timeGrain'] == null ? null : (map['timeGrain'] as String).input(),
      valueColumnName: map['valueColumnName'] == null ? null : (map['valueColumnName'] as String).input(),
    );
  }
}


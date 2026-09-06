// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_rule.dart';

/// Log Analytics Query Signal Definition properties
class LogAnalyticsQuerySignalDefinitionProperties {
  /// Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  final pulumi.Input<String?>? dataUnit;
  /// Display name
  final pulumi.Input<String?>? displayName;
  /// Evaluation rules for the signal definition
  final pulumi.Input<EvaluationRule> evaluationRules;
  /// Query text in KQL syntax
  final pulumi.Input<String> queryText;
  /// Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  final pulumi.Input<dynamic>? refreshInterval;
  /// Supported signal kinds as discriminator
  /// Expected value is 'LogAnalyticsQuery'.
  final pulumi.Input<String> signalKind;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>?>? tags;
  /// Time range of signal. ISO duration format like PT10M. If not specified, the KQL query must define a time range.
  final pulumi.Input<String?>? timeGrain;
  /// Name of the column in the result set to evaluate against the thresholds. Defaults to the first column in the result set if not specified. The column must be numeric.
  final pulumi.Input<String?>? valueColumnName;

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
    pulumi.Input<dynamic>? refreshInterval,
    required this.signalKind,
    this.tags,
    this.timeGrain,
    this.valueColumnName,
  }) : refreshInterval = refreshInterval ?? pulumi.Input.fromValue('PT1M');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataUnit': ?dataUnit,
      'displayName': ?displayName,
      'evaluationRules': pulumi.Input.mapInputValue<EvaluationRule, Map<String, dynamic>>(evaluationRules, (value) => value.toMap()),
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
      dataUnit: (() { final guardedValue = map['dataUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationRules: pulumi.Input.fromValue(EvaluationRule.fromMap((map['evaluationRules']! as Map).cast<String, dynamic>())),
      queryText: pulumi.Input.fromValue(map['queryText'] as String),
      refreshInterval: (() { final guardedValue = map['refreshInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      signalKind: pulumi.Input.fromValue(map['signalKind'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeGrain: (() { final guardedValue = map['timeGrain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueColumnName: (() { final guardedValue = map['valueColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

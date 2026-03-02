// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_rule_response.dart';

/// Log Analytics Query Signal Definition properties
class LogAnalyticsQuerySignalDefinitionPropertiesResponse {
  /// Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  final pulumi.Input<String>? dataUnit;
  /// Date when the signal definition was (soft-)deleted
  final pulumi.Input<String> deletionDate;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Evaluation rules for the signal definition
  final pulumi.Input<EvaluationRuleResponse> evaluationRules;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Query text in KQL syntax
  final pulumi.Input<String> queryText;
  /// Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  final pulumi.Input<String>? refreshInterval;
  /// Supported signal kinds as discriminator
  /// Expected value is 'LogAnalyticsQuery'.
  final pulumi.Input<String> signalKind;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? tags;
  /// Time range of signal. ISO duration format like PT10M. If not specified, the KQL query must define a time range.
  final pulumi.Input<String>? timeGrain;
  /// Name of the column in the result set to evaluate against the thresholds. Defaults to the first column in the result set if not specified. The column must be numeric.
  final pulumi.Input<String>? valueColumnName;

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
      'evaluationRules': pulumi.Input.mapInputValue<EvaluationRuleResponse, Map<String, dynamic>>(evaluationRules, (value) => value.toMap()),
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
      dataUnit: map['dataUnit'] == null ? null : (map['dataUnit'] as String).input(),
      deletionDate: (map['deletionDate'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      evaluationRules: (EvaluationRuleResponse.fromMap((map['evaluationRules'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      queryText: (map['queryText'] as String).input(),
      refreshInterval: map['refreshInterval'] == null ? null : (map['refreshInterval'] as String).input(),
      signalKind: (map['signalKind'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      timeGrain: map['timeGrain'] == null ? null : (map['timeGrain'] as String).input(),
      valueColumnName: map['valueColumnName'] == null ? null : (map['valueColumnName'] as String).input(),
    );
  }
}


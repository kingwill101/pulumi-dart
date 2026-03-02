// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_rule_response.dart';

/// Prometheus Metrics Signal Definition properties
class PrometheusMetricsSignalDefinitionPropertiesResponse {
  /// Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  final pulumi.Input<String>? dataUnit;
  /// Date when the signal definition was (soft-)deleted
  final pulumi.Input<String> deletionDate;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Evaluation rules for the signal definition
  final pulumi.Input<EvaluationRuleResponse> evaluationRules;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? labels;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Query text in PromQL syntax
  final pulumi.Input<String> queryText;
  /// Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  final pulumi.Input<String>? refreshInterval;
  /// Supported signal kinds as discriminator
  /// Expected value is 'PrometheusMetricsQuery'.
  final pulumi.Input<String> signalKind;
  /// Time range of signal. ISO duration format like PT10M.
  final pulumi.Input<String>? timeGrain;

  /// Creates a new [PrometheusMetricsSignalDefinitionPropertiesResponse].
  /// [dataUnit] Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  /// [deletionDate] Date when the signal definition was (soft-)deleted
  /// [displayName] Display name
  /// [evaluationRules] Evaluation rules for the signal definition
  /// [labels] Optional set of labels (key-value pairs)
  /// [provisioningState] The status of the last operation.
  /// [queryText] Query text in PromQL syntax
  /// [refreshInterval] Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  /// [signalKind] Supported signal kinds as discriminator
  /// [timeGrain] Time range of signal. ISO duration format like PT10M.
  PrometheusMetricsSignalDefinitionPropertiesResponse({
    this.dataUnit,
    required this.deletionDate,
    this.displayName,
    required this.evaluationRules,
    this.labels,
    required this.provisioningState,
    required this.queryText,
    this.refreshInterval,
    required this.signalKind,
    this.timeGrain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataUnit': ?dataUnit,
      'deletionDate': deletionDate,
      'displayName': ?displayName,
      'evaluationRules': pulumi.Input.mapInputValue<EvaluationRuleResponse, Map<String, dynamic>>(evaluationRules, (value) => value.toMap()),
      'labels': ?labels,
      'provisioningState': provisioningState,
      'queryText': queryText,
      'refreshInterval': ?refreshInterval,
      'signalKind': signalKind,
      'timeGrain': ?timeGrain,
    };
  }

  factory PrometheusMetricsSignalDefinitionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrometheusMetricsSignalDefinitionPropertiesResponse(
      dataUnit: map['dataUnit'] == null ? null : (map['dataUnit']! as String).input(),
      deletionDate: (map['deletionDate'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      evaluationRules: (EvaluationRuleResponse.fromMap((map['evaluationRules'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      queryText: (map['queryText'] as String).input(),
      refreshInterval: map['refreshInterval'] == null ? null : (map['refreshInterval']! as String).input(),
      signalKind: (map['signalKind'] as String).input(),
      timeGrain: map['timeGrain'] == null ? null : (map['timeGrain']! as String).input(),
    );
  }
}


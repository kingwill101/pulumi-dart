// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_rule.dart';

/// Prometheus Metrics Signal Definition properties
class PrometheusMetricsSignalDefinitionProperties {
  /// Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  final pulumi.Input<String>? dataUnit;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Evaluation rules for the signal definition
  final pulumi.Input<EvaluationRule> evaluationRules;
  /// Query text in PromQL syntax
  final pulumi.Input<String> queryText;
  /// Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  final pulumi.Input<String>? refreshInterval;
  /// Supported signal kinds as discriminator
  /// Expected value is 'PrometheusMetricsQuery'.
  final pulumi.Input<String> signalKind;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? tags;
  /// Time range of signal. ISO duration format like PT10M.
  final pulumi.Input<String>? timeGrain;

  /// Creates a new [PrometheusMetricsSignalDefinitionProperties].
  /// [dataUnit] Unit of the signal result (e.g. Bytes, MilliSeconds, Percent, Count))
  /// [displayName] Display name
  /// [evaluationRules] Evaluation rules for the signal definition
  /// [queryText] Query text in PromQL syntax
  /// [refreshInterval] Interval in which the signal is being evaluated. Defaults to PT1M (1 minute).
  /// [signalKind] Supported signal kinds as discriminator
  /// [tags] Optional set of labels (key-value pairs)
  /// [timeGrain] Time range of signal. ISO duration format like PT10M.
  PrometheusMetricsSignalDefinitionProperties({
    this.dataUnit,
    this.displayName,
    required this.evaluationRules,
    required this.queryText,
    this.refreshInterval,
    required this.signalKind,
    this.tags,
    this.timeGrain,
  });

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
    };
  }

  factory PrometheusMetricsSignalDefinitionProperties.fromMap(Map<String, dynamic> map) {
    return PrometheusMetricsSignalDefinitionProperties(
      dataUnit: map['dataUnit'] == null ? null : (map['dataUnit'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      evaluationRules: (EvaluationRule.fromMap((map['evaluationRules'] as Map).cast<String, dynamic>())).input(),
      queryText: (map['queryText'] as String).input(),
      refreshInterval: map['refreshInterval'] == null ? null : (map['refreshInterval'] as String).input(),
      signalKind: (map['signalKind'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      timeGrain: map['timeGrain'] == null ? null : (map['timeGrain'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_response.dart';

/// Azure Spring Apps scaling configurations.
class ScaleResponse {
  /// Optional. Maximum number of container replicas. Defaults to 10 if not set.
  final pulumi.Input<int?>? maxReplicas;
  /// Optional. Minimum number of container replicas.
  final pulumi.Input<int?>? minReplicas;
  /// Scaling rules.
  final pulumi.Input<List<ScaleRuleResponse>?>? rules;

  /// Creates a new [ScaleResponse].
  /// [maxReplicas] Optional. Maximum number of container replicas. Defaults to 10 if not set.
  /// [minReplicas] Optional. Minimum number of container replicas.
  /// [rules] Scaling rules.
  ScaleResponse({
    pulumi.Input<int?>? maxReplicas,
    this.minReplicas,
    this.rules,
  }) : maxReplicas = maxReplicas ?? pulumi.Input.fromValue(10);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ScaleRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ScaleRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScaleResponse.fromMap(Map<String, dynamic> map) {
    return ScaleResponse(
      maxReplicas: (() { final guardedValue = map['maxReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minReplicas: (() { final guardedValue = map['minReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleRuleResponse>(guardedValue, (value) => ScaleRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_response.dart';

/// Azure Spring Apps scaling configurations.
class ScaleResponse {
  /// Optional. Maximum number of container replicas. Defaults to 10 if not set.
  final pulumi.Input<int>? maxReplicas;
  /// Optional. Minimum number of container replicas.
  final pulumi.Input<int>? minReplicas;
  /// Scaling rules.
  final pulumi.Input<List<ScaleRuleResponse>>? rules;

  /// Creates a new [ScaleResponse].
  /// [maxReplicas] Optional. Maximum number of container replicas. Defaults to 10 if not set.
  /// [minReplicas] Optional. Minimum number of container replicas.
  /// [rules] Scaling rules.
  ScaleResponse({
    this.maxReplicas,
    this.minReplicas,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ScaleRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ScaleRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScaleResponse.fromMap(Map<String, dynamic> map) {
    return ScaleResponse(
      maxReplicas: map['maxReplicas'] == null ? null : (map['maxReplicas']! as int).input(),
      minReplicas: map['minReplicas'] == null ? null : (map['minReplicas']! as int).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<ScaleRuleResponse>(map['rules']!, (value) => ScaleRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


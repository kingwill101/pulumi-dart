// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_response.dart';

/// Container App scaling configurations.
class ScaleResponse {
  /// Optional. KEDA Cooldown Period. Defaults to 300 seconds if not set.
  final pulumi.Input<int>? cooldownPeriod;
  /// Optional. Maximum number of container replicas. Defaults to 10 if not set.
  final pulumi.Input<int>? maxReplicas;
  /// Optional. Minimum number of container replicas.
  final pulumi.Input<int>? minReplicas;
  /// Optional. KEDA Polling Interval. Defaults to 30 seconds if not set.
  final pulumi.Input<int>? pollingInterval;
  /// Scaling rules.
  final pulumi.Input<List<ScaleRuleResponse>>? rules;

  /// Creates a new [ScaleResponse].
  /// [cooldownPeriod] Optional. KEDA Cooldown Period. Defaults to 300 seconds if not set.
  /// [maxReplicas] Optional. Maximum number of container replicas. Defaults to 10 if not set.
  /// [minReplicas] Optional. Minimum number of container replicas.
  /// [pollingInterval] Optional. KEDA Polling Interval. Defaults to 30 seconds if not set.
  /// [rules] Scaling rules.
  ScaleResponse({
    this.cooldownPeriod,
    this.maxReplicas,
    this.minReplicas,
    this.pollingInterval,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownPeriod': ?cooldownPeriod,
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
      'pollingInterval': ?pollingInterval,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ScaleRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ScaleRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScaleResponse.fromMap(Map<String, dynamic> map) {
    return ScaleResponse(
      cooldownPeriod: map['cooldownPeriod'] == null ? null : (map['cooldownPeriod']! as int).input(),
      maxReplicas: map['maxReplicas'] == null ? null : (map['maxReplicas']! as int).input(),
      minReplicas: map['minReplicas'] == null ? null : (map['minReplicas']! as int).input(),
      pollingInterval: map['pollingInterval'] == null ? null : (map['pollingInterval']! as int).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<ScaleRuleResponse>(map['rules']!, (value) => ScaleRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


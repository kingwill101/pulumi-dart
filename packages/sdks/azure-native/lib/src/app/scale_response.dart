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
  const ScaleResponse({
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
      cooldownPeriod: (() { final guardedValue = map['cooldownPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxReplicas: (() { final guardedValue = map['maxReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minReplicas: (() { final guardedValue = map['minReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pollingInterval: (() { final guardedValue = map['pollingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleRuleResponse>(guardedValue, (value) => ScaleRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule.dart';

/// Container App scaling configurations.
class Scale {
  /// Optional. KEDA Cooldown Period. Defaults to 300 seconds if not set.
  final int? cooldownPeriod;
  /// Optional. Maximum number of container replicas. Defaults to 10 if not set.
  final int? maxReplicas;
  /// Optional. Minimum number of container replicas.
  final int? minReplicas;
  /// Optional. KEDA Polling Interval. Defaults to 30 seconds if not set.
  final int? pollingInterval;
  /// Scaling rules.
  final List<ScaleRule>? rules;

  /// Creates a new [Scale].
  /// [cooldownPeriod] Optional. KEDA Cooldown Period. Defaults to 300 seconds if not set.
  /// [maxReplicas] Optional. Maximum number of container replicas. Defaults to 10 if not set.
  /// [minReplicas] Optional. Minimum number of container replicas.
  /// [pollingInterval] Optional. KEDA Polling Interval. Defaults to 30 seconds if not set.
  /// [rules] Scaling rules.
  Scale({
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
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ScaleRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory Scale.fromMap(Map<String, dynamic> map) {
    return Scale(
      cooldownPeriod: map['cooldownPeriod'] == null ? null : map['cooldownPeriod'] as int,
      maxReplicas: map['maxReplicas'] == null ? null : map['maxReplicas'] as int,
      minReplicas: map['minReplicas'] == null ? null : map['minReplicas'] as int,
      pollingInterval: map['pollingInterval'] == null ? null : map['pollingInterval'] as int,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ScaleRule>(map['rules'], (value) => ScaleRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule.dart';

/// Container App scaling configurations.
class Scale {
  /// Optional. KEDA Cooldown Period. Defaults to 300 seconds if not set.
  final pulumi.Input<int?>? cooldownPeriod;
  /// Optional. Maximum number of container replicas. Defaults to 10 if not set.
  final pulumi.Input<int?>? maxReplicas;
  /// Optional. Minimum number of container replicas.
  final pulumi.Input<int?>? minReplicas;
  /// Optional. KEDA Polling Interval. Defaults to 30 seconds if not set.
  final pulumi.Input<int?>? pollingInterval;
  /// Scaling rules.
  final pulumi.Input<List<ScaleRule>?>? rules;

  /// Creates a new [Scale].
  /// [cooldownPeriod] Optional. KEDA Cooldown Period. Defaults to 300 seconds if not set.
  /// [maxReplicas] Optional. Maximum number of container replicas. Defaults to 10 if not set.
  /// [minReplicas] Optional. Minimum number of container replicas.
  /// [pollingInterval] Optional. KEDA Polling Interval. Defaults to 30 seconds if not set.
  /// [rules] Scaling rules.
  Scale({
    this.cooldownPeriod,
    pulumi.Input<int?>? maxReplicas,
    this.minReplicas,
    this.pollingInterval,
    this.rules,
  }) : maxReplicas = maxReplicas ?? pulumi.Input.fromValue(10);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownPeriod': ?cooldownPeriod,
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
      'pollingInterval': ?pollingInterval,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ScaleRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ScaleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Scale.fromMap(Map<String, dynamic> map) {
    return Scale(
      cooldownPeriod: (() { final guardedValue = map['cooldownPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxReplicas: (() { final guardedValue = map['maxReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minReplicas: (() { final guardedValue = map['minReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      pollingInterval: (() { final guardedValue = map['pollingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleRule>(guardedValue, (value) => ScaleRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

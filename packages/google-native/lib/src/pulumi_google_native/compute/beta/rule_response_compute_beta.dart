// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response_compute_beta.dart';
import 'log_config_response_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class RuleResponseComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final String action;

  /// This is deprecated and has no effect. Do not use.
  final List<ConditionResponseComputeBeta> conditions;

  /// This is deprecated and has no effect. Do not use.
  final String description;

  /// This is deprecated and has no effect. Do not use.
  final List<String> ins;

  /// This is deprecated and has no effect. Do not use.
  final List<LogConfigResponseComputeBeta> logConfigs;

  /// This is deprecated and has no effect. Do not use.
  final List<String> notIns;

  /// This is deprecated and has no effect. Do not use.
  final List<String> permissions;

  RuleResponseComputeBeta({
    required this.action,
    required this.conditions,
    required this.description,
    required this.ins,
    required this.logConfigs,
    required this.notIns,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['conditions'] = pulumi.Input.encodeList<ConditionResponseComputeBeta,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    map['description'] = description;
    map['ins'] = ins;
    map['logConfigs'] = pulumi.Input.encodeList<LogConfigResponseComputeBeta,
        Map<String, dynamic>>(logConfigs, (value) => value.toMap());
    map['notIns'] = notIns;
    map['permissions'] = permissions;
    return map;
  }

  factory RuleResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return RuleResponseComputeBeta(
      action: map['action'] as String,
      conditions: pulumi.Input.decodeList<ConditionResponseComputeBeta>(
          map['conditions'],
          (value) => ConditionResponseComputeBeta.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      ins: (map['ins'] as List).cast<String>(),
      logConfigs: pulumi.Input.decodeList<LogConfigResponseComputeBeta>(
          map['logConfigs'],
          (value) => LogConfigResponseComputeBeta.fromMap(
              (value as Map).cast<String, dynamic>())),
      notIns: (map['notIns'] as List).cast<String>(),
      permissions: (map['permissions'] as List).cast<String>(),
    );
  }
}

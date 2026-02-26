// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'condition_response5.dart';
import 'log_config_response3.dart';

/// This is deprecated and has no effect. Do not use.
class RuleResponse3 {
  /// This is deprecated and has no effect. Do not use.
  final String action;

  /// This is deprecated and has no effect. Do not use.
  final List<ConditionResponse5> conditions;

  /// This is deprecated and has no effect. Do not use.
  final String description;

  /// This is deprecated and has no effect. Do not use.
  final List<String> ins;

  /// This is deprecated and has no effect. Do not use.
  final List<LogConfigResponse3> logConfigs;

  /// This is deprecated and has no effect. Do not use.
  final List<String> notIns;

  /// This is deprecated and has no effect. Do not use.
  final List<String> permissions;

  RuleResponse3({
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
    map['conditions'] =
        Input.encodeList<ConditionResponse5, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    map['description'] = description;
    map['ins'] = ins;
    map['logConfigs'] =
        Input.encodeList<LogConfigResponse3, Map<String, dynamic>>(
            logConfigs, (value) => value.toMap());
    map['notIns'] = notIns;
    map['permissions'] = permissions;
    return map;
  }

  factory RuleResponse3.fromMap(Map<String, dynamic> map) {
    return RuleResponse3(
      action: map['action'] as String,
      conditions: Input.decodeList<ConditionResponse5>(
          map['conditions'],
          (value) => ConditionResponse5.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      ins: (map['ins'] as List).cast<String>(),
      logConfigs: Input.decodeList<LogConfigResponse3>(
          map['logConfigs'],
          (value) => LogConfigResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      notIns: (map['notIns'] as List).cast<String>(),
      permissions: (map['permissions'] as List).cast<String>(),
    );
  }
}

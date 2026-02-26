// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'condition_response3.dart';
import 'log_config_response.dart';

/// This is deprecated and has no effect. Do not use.
class RuleResponse {
  /// This is deprecated and has no effect. Do not use.
  final String action;

  /// This is deprecated and has no effect. Do not use.
  final List<ConditionResponse3> conditions;

  /// This is deprecated and has no effect. Do not use.
  final String description;

  /// This is deprecated and has no effect. Do not use.
  final List<String> ins;

  /// This is deprecated and has no effect. Do not use.
  final List<LogConfigResponse> logConfigs;

  /// This is deprecated and has no effect. Do not use.
  final List<String> notIns;

  /// This is deprecated and has no effect. Do not use.
  final List<String> permissions;

  RuleResponse({
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
        Input.encodeList<ConditionResponse3, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    map['description'] = description;
    map['ins'] = ins;
    map['logConfigs'] =
        Input.encodeList<LogConfigResponse, Map<String, dynamic>>(
            logConfigs, (value) => value.toMap());
    map['notIns'] = notIns;
    map['permissions'] = permissions;
    return map;
  }

  factory RuleResponse.fromMap(Map<String, dynamic> map) {
    return RuleResponse(
      action: map['action'] as String,
      conditions: Input.decodeList<ConditionResponse3>(
          map['conditions'],
          (value) => ConditionResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      ins: (map['ins'] as List).cast<String>(),
      logConfigs: Input.decodeList<LogConfigResponse>(
          map['logConfigs'],
          (value) => LogConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      notIns: (map['notIns'] as List).cast<String>(),
      permissions: (map['permissions'] as List).cast<String>(),
    );
  }
}

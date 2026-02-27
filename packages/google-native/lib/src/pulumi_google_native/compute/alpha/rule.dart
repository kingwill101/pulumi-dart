// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_compute_alpha.dart';
import 'log_config.dart';
import 'rule_action.dart';

/// This is deprecated and has no effect. Do not use.
class Rule {
  /// This is deprecated and has no effect. Do not use.
  final RuleAction? action;

  /// This is deprecated and has no effect. Do not use.
  final List<ConditionComputeAlpha>? conditions;

  /// This is deprecated and has no effect. Do not use.
  final String? description;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? ins;

  /// This is deprecated and has no effect. Do not use.
  final List<LogConfig>? logConfigs;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? notIns;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? permissions;

  Rule({
    this.action,
    this.conditions,
    this.description,
    this.ins,
    this.logConfigs,
    this.notIns,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue.value;
    }
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] =
          pulumi.Input.encodeList<ConditionComputeAlpha, Map<String, dynamic>>(
              conditionsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final insValue = ins;
    if (insValue != null) {
      map['ins'] = insValue;
    }
    final logConfigsValue = logConfigs;
    if (logConfigsValue != null) {
      map['logConfigs'] =
          pulumi.Input.encodeList<LogConfig, Map<String, dynamic>>(
              logConfigsValue, (value) => value.toMap());
    }
    final notInsValue = notIns;
    if (notInsValue != null) {
      map['notIns'] = notInsValue;
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = permissionsValue;
    }
    return map;
  }

  factory Rule.fromMap(Map<String, dynamic> map) {
    return Rule(
      action: map['action'] == null
          ? null
          : RuleAction.fromValue(map['action'] as String),
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<ConditionComputeAlpha>(
              map['conditions'],
              (value) => ConditionComputeAlpha.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      ins: map['ins'] == null ? null : (map['ins'] as List).cast<String>(),
      logConfigs: map['logConfigs'] == null
          ? null
          : pulumi.Input.decodeList<LogConfig>(
              map['logConfigs'],
              (value) =>
                  LogConfig.fromMap((value as Map).cast<String, dynamic>())),
      notIns:
          map['notIns'] == null ? null : (map['notIns'] as List).cast<String>(),
      permissions: map['permissions'] == null
          ? null
          : (map['permissions'] as List).cast<String>(),
    );
  }
}

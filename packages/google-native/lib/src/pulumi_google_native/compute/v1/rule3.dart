// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'condition5.dart';
import 'log_config3.dart';
import 'rule_action3.dart';

/// This is deprecated and has no effect. Do not use.
class Rule3 {
  /// This is deprecated and has no effect. Do not use.
  final RuleAction3? action;

  /// This is deprecated and has no effect. Do not use.
  final List<Condition5>? conditions;

  /// This is deprecated and has no effect. Do not use.
  final String? description;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? ins;

  /// This is deprecated and has no effect. Do not use.
  final List<LogConfig3>? logConfigs;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? notIns;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? permissions;

  Rule3({
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
      map['conditions'] = Input.encodeList<Condition5, Map<String, dynamic>>(
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
      map['logConfigs'] = Input.encodeList<LogConfig3, Map<String, dynamic>>(
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

  factory Rule3.fromMap(Map<String, dynamic> map) {
    return Rule3(
      action: map['action'] == null
          ? null
          : RuleAction3.fromValue(map['action'] as String),
      conditions: map['conditions'] == null
          ? null
          : Input.decodeList<Condition5>(
              map['conditions'],
              (value) =>
                  Condition5.fromMap((value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      ins: map['ins'] == null ? null : (map['ins'] as List).cast<String>(),
      logConfigs: map['logConfigs'] == null
          ? null
          : Input.decodeList<LogConfig3>(
              map['logConfigs'],
              (value) =>
                  LogConfig3.fromMap((value as Map).cast<String, dynamic>())),
      notIns:
          map['notIns'] == null ? null : (map['notIns'] as List).cast<String>(),
      permissions: map['permissions'] == null
          ? null
          : (map['permissions'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition.dart';
import 'log_config.dart';
import 'rule_action.dart';

/// This is deprecated and has no effect. Do not use.
class Rule {
  /// This is deprecated and has no effect. Do not use.
  final RuleAction? action;

  /// This is deprecated and has no effect. Do not use.
  final List<Condition>? conditions;

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

  /// Creates a new [Rule].
  /// [action] This is deprecated and has no effect. Do not use.
  /// [conditions] This is deprecated and has no effect. Do not use.
  /// [description] This is deprecated and has no effect. Do not use.
  /// [ins] This is deprecated and has no effect. Do not use.
  /// [logConfigs] This is deprecated and has no effect. Do not use.
  /// [notIns] This is deprecated and has no effect. Do not use.
  /// [permissions] This is deprecated and has no effect. Do not use.
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
    return <String, dynamic>{
      'action': ?action == null ? null : action!.value,
      'conditions': ?conditions == null
          ? null
          : pulumi.Input.encodeList<Condition, Map<String, dynamic>>(
              conditions!,
              (value) => value.toMap(),
            ),
      'description': ?description,
      'ins': ?ins,
      'logConfigs': ?logConfigs == null
          ? null
          : pulumi.Input.encodeList<LogConfig, Map<String, dynamic>>(
              logConfigs!,
              (value) => value.toMap(),
            ),
      'notIns': ?notIns,
      'permissions': ?permissions,
    };
  }

  factory Rule.fromMap(Map<String, dynamic> map) {
    return Rule(
      action: map['action'] == null
          ? null
          : RuleAction.fromValue(map['action'] as String),
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<Condition>(
              map['conditions'],
              (value) =>
                  Condition.fromMap((value as Map).cast<String, dynamic>()),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      ins: map['ins'] == null ? null : (map['ins'] as List).cast<String>(),
      logConfigs: map['logConfigs'] == null
          ? null
          : pulumi.Input.decodeList<LogConfig>(
              map['logConfigs'],
              (value) =>
                  LogConfig.fromMap((value as Map).cast<String, dynamic>()),
            ),
      notIns: map['notIns'] == null
          ? null
          : (map['notIns'] as List).cast<String>(),
      permissions: map['permissions'] == null
          ? null
          : (map['permissions'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_compute_beta.dart';
import 'log_config_compute_beta.dart';
import 'rule_action_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class RuleComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final RuleActionComputeBeta? action;

  /// This is deprecated and has no effect. Do not use.
  final List<ConditionComputeBeta>? conditions;

  /// This is deprecated and has no effect. Do not use.
  final String? description;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? ins;

  /// This is deprecated and has no effect. Do not use.
  final List<LogConfigComputeBeta>? logConfigs;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? notIns;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? permissions;

  /// Creates a new [RuleComputeBeta].
  /// [action] This is deprecated and has no effect. Do not use.
  /// [conditions] This is deprecated and has no effect. Do not use.
  /// [description] This is deprecated and has no effect. Do not use.
  /// [ins] This is deprecated and has no effect. Do not use.
  /// [logConfigs] This is deprecated and has no effect. Do not use.
  /// [notIns] This is deprecated and has no effect. Do not use.
  /// [permissions] This is deprecated and has no effect. Do not use.
  RuleComputeBeta({
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
          pulumi.Input.encodeList<ConditionComputeBeta, Map<String, dynamic>>(
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
          pulumi.Input.encodeList<LogConfigComputeBeta, Map<String, dynamic>>(
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

  factory RuleComputeBeta.fromMap(Map<String, dynamic> map) {
    return RuleComputeBeta(
      action: map['action'] == null
          ? null
          : RuleActionComputeBeta.fromValue(map['action'] as String),
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<ConditionComputeBeta>(
              map['conditions'],
              (value) => ConditionComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      ins: map['ins'] == null ? null : (map['ins'] as List).cast<String>(),
      logConfigs: map['logConfigs'] == null
          ? null
          : pulumi.Input.decodeList<LogConfigComputeBeta>(
              map['logConfigs'],
              (value) => LogConfigComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      notIns:
          map['notIns'] == null ? null : (map['notIns'] as List).cast<String>(),
      permissions: map['permissions'] == null
          ? null
          : (map['permissions'] as List).cast<String>(),
    );
  }
}

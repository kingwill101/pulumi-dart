// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_compute_v1.dart';
import 'log_config_compute_v1.dart';
import 'rule_action_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class RuleComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final RuleActionComputeV1? action;

  /// This is deprecated and has no effect. Do not use.
  final List<ConditionComputeV1>? conditions;

  /// This is deprecated and has no effect. Do not use.
  final String? description;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? ins;

  /// This is deprecated and has no effect. Do not use.
  final List<LogConfigComputeV1>? logConfigs;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? notIns;

  /// This is deprecated and has no effect. Do not use.
  final List<String>? permissions;

  /// Creates a new [RuleComputeV1].
  /// [action] This is deprecated and has no effect. Do not use.
  /// [conditions] This is deprecated and has no effect. Do not use.
  /// [description] This is deprecated and has no effect. Do not use.
  /// [ins] This is deprecated and has no effect. Do not use.
  /// [logConfigs] This is deprecated and has no effect. Do not use.
  /// [notIns] This is deprecated and has no effect. Do not use.
  /// [permissions] This is deprecated and has no effect. Do not use.
  RuleComputeV1({
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
          : pulumi.Input.encodeList<ConditionComputeV1, Map<String, dynamic>>(
              conditions!,
              (value) => value.toMap(),
            ),
      'description': ?description,
      'ins': ?ins,
      'logConfigs': ?logConfigs == null
          ? null
          : pulumi.Input.encodeList<LogConfigComputeV1, Map<String, dynamic>>(
              logConfigs!,
              (value) => value.toMap(),
            ),
      'notIns': ?notIns,
      'permissions': ?permissions,
    };
  }

  factory RuleComputeV1.fromMap(Map<String, dynamic> map) {
    return RuleComputeV1(
      action: map['action'] == null
          ? null
          : RuleActionComputeV1.fromValue(map['action'] as String),
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<ConditionComputeV1>(
              map['conditions'],
              (value) => ConditionComputeV1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      ins: map['ins'] == null ? null : (map['ins'] as List).cast<String>(),
      logConfigs: map['logConfigs'] == null
          ? null
          : pulumi.Input.decodeList<LogConfigComputeV1>(
              map['logConfigs'],
              (value) => LogConfigComputeV1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
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

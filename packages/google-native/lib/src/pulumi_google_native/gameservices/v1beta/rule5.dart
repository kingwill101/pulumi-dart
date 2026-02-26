// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'condition7.dart';
import 'log_config5.dart';
import 'rule_action5.dart';

/// A rule to be applied in a Policy.
class Rule5 {
  /// Required
  final RuleAction5? action;

  /// Additional restrictions that must be met. All conditions must pass for the rule to match.
  final List<Condition7>? conditions;

  /// Human-readable description of the rule.
  final String? description;

  /// If one or more 'in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
  final List<String>? in_;

  /// The config returned to callers of CheckPolicy for any entries that match the LOG action.
  final List<LogConfig5>? logConfig;

  /// If one or more 'not_in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries. The format for in and not_in entries can be found at in the Local IAM documentation (see go/local-iam#features).
  final List<String>? notIn;

  /// A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
  final List<String>? permissions;

  Rule5({
    this.action,
    this.conditions,
    this.description,
    this.in_,
    this.logConfig,
    this.notIn,
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
      map['conditions'] = Input.encodeList<Condition7, Map<String, dynamic>>(
          conditionsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final in_Value = in_;
    if (in_Value != null) {
      map['in'] = in_Value;
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = Input.encodeList<LogConfig5, Map<String, dynamic>>(
          logConfigValue, (value) => value.toMap());
    }
    final notInValue = notIn;
    if (notInValue != null) {
      map['notIn'] = notInValue;
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = permissionsValue;
    }
    return map;
  }

  factory Rule5.fromMap(Map<String, dynamic> map) {
    return Rule5(
      action: map['action'] == null
          ? null
          : RuleAction5.fromValue(map['action'] as String),
      conditions: map['conditions'] == null
          ? null
          : Input.decodeList<Condition7>(
              map['conditions'],
              (value) =>
                  Condition7.fromMap((value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      in_: map['in'] == null ? null : (map['in'] as List).cast<String>(),
      logConfig: map['logConfig'] == null
          ? null
          : Input.decodeList<LogConfig5>(
              map['logConfig'],
              (value) =>
                  LogConfig5.fromMap((value as Map).cast<String, dynamic>())),
      notIn:
          map['notIn'] == null ? null : (map['notIn'] as List).cast<String>(),
      permissions: map['permissions'] == null
          ? null
          : (map['permissions'] as List).cast<String>(),
    );
  }
}

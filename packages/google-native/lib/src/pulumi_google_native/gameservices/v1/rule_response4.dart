// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'condition_response6.dart';
import 'log_config_response4.dart';

/// A rule to be applied in a Policy.
class RuleResponse4 {
  /// Required
  final String action;

  /// Additional restrictions that must be met. All conditions must pass for the rule to match.
  final List<ConditionResponse6> conditions;

  /// Human-readable description of the rule.
  final String description;

  /// If one or more 'in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
  final List<String> in_;

  /// The config returned to callers of CheckPolicy for any entries that match the LOG action.
  final List<LogConfigResponse4> logConfig;

  /// If one or more 'not_in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries. The format for in and not_in entries can be found at in the Local IAM documentation (see go/local-iam#features).
  final List<String> notIn;

  /// A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
  final List<String> permissions;

  RuleResponse4({
    required this.action,
    required this.conditions,
    required this.description,
    required this.in_,
    required this.logConfig,
    required this.notIn,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['conditions'] =
        Input.encodeList<ConditionResponse6, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    map['description'] = description;
    map['in'] = in_;
    map['logConfig'] =
        Input.encodeList<LogConfigResponse4, Map<String, dynamic>>(
            logConfig, (value) => value.toMap());
    map['notIn'] = notIn;
    map['permissions'] = permissions;
    return map;
  }

  factory RuleResponse4.fromMap(Map<String, dynamic> map) {
    return RuleResponse4(
      action: map['action'] as String,
      conditions: Input.decodeList<ConditionResponse6>(
          map['conditions'],
          (value) => ConditionResponse6.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      in_: (map['in'] as List).cast<String>(),
      logConfig: Input.decodeList<LogConfigResponse4>(
          map['logConfig'],
          (value) => LogConfigResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
      notIn: (map['notIn'] as List).cast<String>(),
      permissions: (map['permissions'] as List).cast<String>(),
    );
  }
}

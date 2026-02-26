// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'condition_response7.dart';
import 'log_config_response5.dart';

/// A rule to be applied in a Policy.
class RuleResponse5 {
  /// Required
  final String action;

  /// Additional restrictions that must be met. All conditions must pass for the rule to match.
  final List<ConditionResponse7> conditions;

  /// Human-readable description of the rule.
  final String description;

  /// If one or more 'in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
  final List<String> in_;

  /// The config returned to callers of CheckPolicy for any entries that match the LOG action.
  final List<LogConfigResponse5> logConfig;

  /// If one or more 'not_in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries. The format for in and not_in entries can be found at in the Local IAM documentation (see go/local-iam#features).
  final List<String> notIn;

  /// A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
  final List<String> permissions;

  RuleResponse5({
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
        Input.encodeList<ConditionResponse7, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    map['description'] = description;
    map['in'] = in_;
    map['logConfig'] =
        Input.encodeList<LogConfigResponse5, Map<String, dynamic>>(
            logConfig, (value) => value.toMap());
    map['notIn'] = notIn;
    map['permissions'] = permissions;
    return map;
  }

  factory RuleResponse5.fromMap(Map<String, dynamic> map) {
    return RuleResponse5(
      action: map['action'] as String,
      conditions: Input.decodeList<ConditionResponse7>(
          map['conditions'],
          (value) => ConditionResponse7.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      in_: (map['in'] as List).cast<String>(),
      logConfig: Input.decodeList<LogConfigResponse5>(
          map['logConfig'],
          (value) => LogConfigResponse5.fromMap(
              (value as Map).cast<String, dynamic>())),
      notIn: (map['notIn'] as List).cast<String>(),
      permissions: (map['permissions'] as List).cast<String>(),
    );
  }
}

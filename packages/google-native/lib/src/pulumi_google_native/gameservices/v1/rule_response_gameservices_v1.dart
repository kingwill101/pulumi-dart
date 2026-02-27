// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response_gameservices_v1.dart';
import 'log_config_response_gameservices_v1.dart';

/// A rule to be applied in a Policy.
class RuleResponseGameservicesV1 {
  /// Required
  final String action;

  /// Additional restrictions that must be met. All conditions must pass for the rule to match.
  final List<ConditionResponseGameservicesV1> conditions;

  /// Human-readable description of the rule.
  final String description;

  /// If one or more 'in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
  final List<String> in_;

  /// The config returned to callers of CheckPolicy for any entries that match the LOG action.
  final List<LogConfigResponseGameservicesV1> logConfig;

  /// If one or more 'not_in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries. The format for in and not_in entries can be found at in the Local IAM documentation (see go/local-iam#features).
  final List<String> notIn;

  /// A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
  final List<String> permissions;

  RuleResponseGameservicesV1({
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
    map['conditions'] = pulumi.Input.encodeList<ConditionResponseGameservicesV1,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    map['description'] = description;
    map['in'] = in_;
    map['logConfig'] = pulumi.Input.encodeList<LogConfigResponseGameservicesV1,
        Map<String, dynamic>>(logConfig, (value) => value.toMap());
    map['notIn'] = notIn;
    map['permissions'] = permissions;
    return map;
  }

  factory RuleResponseGameservicesV1.fromMap(Map<String, dynamic> map) {
    return RuleResponseGameservicesV1(
      action: map['action'] as String,
      conditions: pulumi.Input.decodeList<ConditionResponseGameservicesV1>(
          map['conditions'],
          (value) => ConditionResponseGameservicesV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      in_: (map['in'] as List).cast<String>(),
      logConfig: pulumi.Input.decodeList<LogConfigResponseGameservicesV1>(
          map['logConfig'],
          (value) => LogConfigResponseGameservicesV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      notIn: (map['notIn'] as List).cast<String>(),
      permissions: (map['permissions'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_export_policy_rule.dart';

/// Set of export policy rules
class ElasticExportPolicy {
  /// Export policy rule
  final List<ElasticExportPolicyRule>? rules;

  /// Creates a new [ElasticExportPolicy].
  /// [rules] Export policy rule
  ElasticExportPolicy({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ElasticExportPolicyRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory ElasticExportPolicy.fromMap(Map<String, dynamic> map) {
    return ElasticExportPolicy(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ElasticExportPolicyRule>(map['rules'], (value) => ElasticExportPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


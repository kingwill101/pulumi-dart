// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_export_policy_rule.dart';

/// Set of export policy rules
class ElasticExportPolicy {
  /// Export policy rule
  final pulumi.Input<List<ElasticExportPolicyRule>>? rules;

  /// Creates a new [ElasticExportPolicy].
  /// [rules] Export policy rule
  const ElasticExportPolicy({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ElasticExportPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ElasticExportPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ElasticExportPolicy.fromMap(Map<String, dynamic> map) {
    return ElasticExportPolicy(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ElasticExportPolicyRule>(guardedValue, (value) => ElasticExportPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

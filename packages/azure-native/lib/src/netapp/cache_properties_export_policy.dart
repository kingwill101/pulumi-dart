// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_policy_rule.dart';

/// Set of export policy rules
class CachePropertiesExportPolicy {
  /// Export policy rule
  final List<ExportPolicyRule>? rules;

  /// Creates a new [CachePropertiesExportPolicy].
  /// [rules] Export policy rule
  CachePropertiesExportPolicy({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ExportPolicyRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory CachePropertiesExportPolicy.fromMap(Map<String, dynamic> map) {
    return CachePropertiesExportPolicy(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ExportPolicyRule>(map['rules'], (value) => ExportPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


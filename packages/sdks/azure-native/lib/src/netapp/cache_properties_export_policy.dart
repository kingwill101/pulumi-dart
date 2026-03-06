// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_policy_rule.dart';

/// Set of export policy rules
class CachePropertiesExportPolicy {
  /// Export policy rule
  final pulumi.Input<List<ExportPolicyRule>>? rules;

  /// Creates a new [CachePropertiesExportPolicy].
  /// [rules] Export policy rule
  const CachePropertiesExportPolicy({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ExportPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ExportPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CachePropertiesExportPolicy.fromMap(Map<String, dynamic> map) {
    return CachePropertiesExportPolicy(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExportPolicyRule>(guardedValue, (value) => ExportPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


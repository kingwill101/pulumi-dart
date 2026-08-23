// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_policy_rule_response.dart';

/// Set of export policy rules
class CachePropertiesExportPolicyResponse {
  /// Export policy rule
  final pulumi.Input<List<ExportPolicyRuleResponse>>? rules;

  /// Creates a new [CachePropertiesExportPolicyResponse].
  /// [rules] Export policy rule
  const CachePropertiesExportPolicyResponse({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ExportPolicyRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ExportPolicyRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CachePropertiesExportPolicyResponse.fromMap(Map<String, dynamic> map) {
    return CachePropertiesExportPolicyResponse(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExportPolicyRuleResponse>(guardedValue, (value) => ExportPolicyRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

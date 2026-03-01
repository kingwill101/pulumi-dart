// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_policy_rule_response.dart';

/// Set of export policy rules
class CachePropertiesExportPolicyResponse {
  /// Export policy rule
  final List<ExportPolicyRuleResponse>? rules;

  /// Creates a new [CachePropertiesExportPolicyResponse].
  /// [rules] Export policy rule
  CachePropertiesExportPolicyResponse({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ExportPolicyRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory CachePropertiesExportPolicyResponse.fromMap(Map<String, dynamic> map) {
    return CachePropertiesExportPolicyResponse(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ExportPolicyRuleResponse>(map['rules'], (value) => ExportPolicyRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


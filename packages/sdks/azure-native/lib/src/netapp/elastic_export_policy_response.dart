// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_export_policy_rule_response.dart';

/// Set of export policy rules
class ElasticExportPolicyResponse {
  /// Export policy rule
  final pulumi.Input<List<ElasticExportPolicyRuleResponse>>? rules;

  /// Creates a new [ElasticExportPolicyResponse].
  /// [rules] Export policy rule
  const ElasticExportPolicyResponse({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ElasticExportPolicyRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ElasticExportPolicyRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ElasticExportPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ElasticExportPolicyResponse(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ElasticExportPolicyRuleResponse>(guardedValue, (value) => ElasticExportPolicyRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_export_policy_rule_response.dart';

/// Set of export policy rules
class ElasticExportPolicyResponse {
  /// Export policy rule
  final List<ElasticExportPolicyRuleResponse>? rules;

  /// Creates a new [ElasticExportPolicyResponse].
  /// [rules] Export policy rule
  ElasticExportPolicyResponse({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ElasticExportPolicyRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory ElasticExportPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ElasticExportPolicyResponse(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ElasticExportPolicyRuleResponse>(map['rules'], (value) => ElasticExportPolicyRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


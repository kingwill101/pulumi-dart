// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_body_contains.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_header.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_json.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_status_code.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection {
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains?>? bodyContains;
  /// Use a header as an aggregate key. See Custom Key Header below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader?>? header;
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionJson?>? json;
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode?>? statusCode;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection].
  /// [bodyContains] Optional.
  /// [header] Use a header as an aggregate key. See Custom Key Header below.
  /// [json] Optional.
  /// [statusCode] Optional.
  const WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection({
    this.bodyContains,
    this.header,
    this.json,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyContains': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains, Map<String, dynamic>>(bodyContains, (value) => value.toMap()),
      'header': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader, Map<String, dynamic>>(header, (value) => value.toMap()),
      'json': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionJson, Map<String, dynamic>>(json, (value) => value.toMap()),
      'statusCode': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode, Map<String, dynamic>>(statusCode, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection(
      bodyContains: (() { final guardedValue = map['bodyContains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      json: (() { final guardedValue = map['json']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionJson.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

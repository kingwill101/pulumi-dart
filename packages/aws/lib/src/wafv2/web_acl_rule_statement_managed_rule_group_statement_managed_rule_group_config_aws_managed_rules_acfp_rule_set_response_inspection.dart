// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_body_contains.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_header.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_json.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_status_code.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection {
  /// Configures inspection of the response body. See `body_contains` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains?
  bodyContains;

  /// Configures inspection of the response header.See `header` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader?
  header;

  /// Configures inspection of the response JSON. See `json` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionJson?
  json;

  /// Configures inspection of the response status code.See `status_code` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode?
  statusCode;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection].
  /// [bodyContains] Configures inspection of the response body. See `body_contains` for more details.
  /// [header] Configures inspection of the response header.See `header` for more details.
  /// [json] Configures inspection of the response JSON. See `json` for more details.
  /// [statusCode] Configures inspection of the response status code.See `status_code` for more details.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection({
    this.bodyContains,
    this.header,
    this.json,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyContains': ?bodyContains == null ? null : bodyContains!.toMap(),
      'header': ?header == null ? null : header!.toMap(),
      'json': ?json == null ? null : json!.toMap(),
      'statusCode': ?statusCode == null ? null : statusCode!.toMap(),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection(
      bodyContains: map['bodyContains'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains.fromMap(
              (map['bodyContains'] as Map).cast<String, dynamic>(),
            ),
      header: map['header'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader.fromMap(
              (map['header'] as Map).cast<String, dynamic>(),
            ),
      json: map['json'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionJson.fromMap(
              (map['json'] as Map).cast<String, dynamic>(),
            ),
      statusCode: map['statusCode'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode.fromMap(
              (map['statusCode'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

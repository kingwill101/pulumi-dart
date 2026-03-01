// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_body_contains.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_header.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_json.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_status_code.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection {
  /// Configures inspection of the response body. See `body_contains` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionBodyContains?
  bodyContains;

  /// Configures inspection of the response header.See `header` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader?
  header;

  /// Configures inspection of the response JSON. See `json` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionJson?
  json;

  /// Configures inspection of the response status code.See `status_code` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode?
  statusCode;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection].
  /// [bodyContains] Configures inspection of the response body. See `body_contains` for more details.
  /// [header] Configures inspection of the response header.See `header` for more details.
  /// [json] Configures inspection of the response JSON. See `json` for more details.
  /// [statusCode] Configures inspection of the response status code.See `status_code` for more details.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection({
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

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection(
      bodyContains: map['bodyContains'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionBodyContains.fromMap(
              (map['bodyContains'] as Map).cast<String, dynamic>(),
            ),
      header: map['header'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader.fromMap(
              (map['header'] as Map).cast<String, dynamic>(),
            ),
      json: map['json'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionJson.fromMap(
              (map['json'] as Map).cast<String, dynamic>(),
            ),
      statusCode: map['statusCode'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode.fromMap(
              (map['statusCode'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

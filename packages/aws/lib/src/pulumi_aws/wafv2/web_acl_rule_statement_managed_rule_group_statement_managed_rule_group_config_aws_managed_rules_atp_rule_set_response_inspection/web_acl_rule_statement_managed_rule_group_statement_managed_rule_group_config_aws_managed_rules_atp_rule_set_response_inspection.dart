// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_body_contains/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_body_contains.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_header/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_header.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_json/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_json.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_status_code/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_status_code.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection {
  /// Configures inspection of the response body. See <span pulumi-lang-nodejs="`bodyContains`" pulumi-lang-dotnet="`BodyContains`" pulumi-lang-go="`bodyContains`" pulumi-lang-python="`body_contains`" pulumi-lang-yaml="`bodyContains`" pulumi-lang-java="`bodyContains`">`body_contains`</span> for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionBodyContains?
      bodyContains;

  /// Configures inspection of the response header.See <span pulumi-lang-nodejs="`header`" pulumi-lang-dotnet="`Header`" pulumi-lang-go="`header`" pulumi-lang-python="`header`" pulumi-lang-yaml="`header`" pulumi-lang-java="`header`">`header`</span> for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader?
      header;

  /// Configures inspection of the response JSON. See <span pulumi-lang-nodejs="`json`" pulumi-lang-dotnet="`Json`" pulumi-lang-go="`json`" pulumi-lang-python="`json`" pulumi-lang-yaml="`json`" pulumi-lang-java="`json`">`json`</span> for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionJson?
      json;

  /// Configures inspection of the response status code.See <span pulumi-lang-nodejs="`statusCode`" pulumi-lang-dotnet="`StatusCode`" pulumi-lang-go="`statusCode`" pulumi-lang-python="`status_code`" pulumi-lang-yaml="`statusCode`" pulumi-lang-java="`statusCode`">`status_code`</span> for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode?
      statusCode;

  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection({
    this.bodyContains,
    this.header,
    this.json,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bodyContainsValue = bodyContains;
    if (bodyContainsValue != null) {
      map['bodyContains'] = bodyContainsValue.toMap();
    }
    final headerValue = header;
    if (headerValue != null) {
      map['header'] = headerValue.toMap();
    }
    final jsonValue = json;
    if (jsonValue != null) {
      map['json'] = jsonValue.toMap();
    }
    final statusCodeValue = statusCode;
    if (statusCodeValue != null) {
      map['statusCode'] = statusCodeValue.toMap();
    }
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection(
      bodyContains: map['bodyContains'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionBodyContains
              .fromMap((map['bodyContains'] as Map).cast<String, dynamic>()),
      header: map['header'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader
              .fromMap((map['header'] as Map).cast<String, dynamic>()),
      json: map['json'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionJson
              .fromMap((map['json'] as Map).cast<String, dynamic>()),
      statusCode: map['statusCode'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode
              .fromMap((map['statusCode'] as Map).cast<String, dynamic>()),
    );
  }
}

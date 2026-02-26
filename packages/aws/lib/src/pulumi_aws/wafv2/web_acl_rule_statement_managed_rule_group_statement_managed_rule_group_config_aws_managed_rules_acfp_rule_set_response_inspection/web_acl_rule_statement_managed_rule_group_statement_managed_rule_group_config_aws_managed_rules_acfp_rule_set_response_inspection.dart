// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_body_contains/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_body_contains.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_header/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_header.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_json/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_json.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_status_code/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection_status_code.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection {
  /// Configures inspection of the response body. See <span pulumi-lang-nodejs="`bodyContains`" pulumi-lang-dotnet="`BodyContains`" pulumi-lang-go="`bodyContains`" pulumi-lang-python="`body_contains`" pulumi-lang-yaml="`bodyContains`" pulumi-lang-java="`bodyContains`">`body_contains`</span> for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains?
      bodyContains;

  /// Configures inspection of the response header.See <span pulumi-lang-nodejs="`header`" pulumi-lang-dotnet="`Header`" pulumi-lang-go="`header`" pulumi-lang-python="`header`" pulumi-lang-yaml="`header`" pulumi-lang-java="`header`">`header`</span> for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader?
      header;

  /// Configures inspection of the response JSON. See <span pulumi-lang-nodejs="`json`" pulumi-lang-dotnet="`Json`" pulumi-lang-go="`json`" pulumi-lang-python="`json`" pulumi-lang-yaml="`json`" pulumi-lang-java="`json`">`json`</span> for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionJson?
      json;

  /// Configures inspection of the response status code.See <span pulumi-lang-nodejs="`statusCode`" pulumi-lang-dotnet="`StatusCode`" pulumi-lang-go="`statusCode`" pulumi-lang-python="`status_code`" pulumi-lang-yaml="`statusCode`" pulumi-lang-java="`statusCode`">`status_code`</span> for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode?
      statusCode;

  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection({
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

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection(
      bodyContains: map['bodyContains'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains
              .fromMap((map['bodyContains'] as Map).cast<String, dynamic>()),
      header: map['header'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader
              .fromMap((map['header'] as Map).cast<String, dynamic>()),
      json: map['json'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionJson
              .fromMap((map['json'] as Map).cast<String, dynamic>()),
      statusCode: map['statusCode'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode
              .fromMap((map['statusCode'] as Map).cast<String, dynamic>()),
    );
  }
}

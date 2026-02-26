// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_request_inspection_password_field/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_request_inspection_password_field.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_request_inspection_username_field/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_request_inspection_username_field.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspection {
  /// Details about your login page password field. See <span pulumi-lang-nodejs="`passwordField`" pulumi-lang-dotnet="`PasswordField`" pulumi-lang-go="`passwordField`" pulumi-lang-python="`password_field`" pulumi-lang-yaml="`passwordField`" pulumi-lang-java="`passwordField`">`password_field`</span> for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionPasswordField
      passwordField;

  /// The payload type for your login endpoint, either JSON or form encoded.
  final String payloadType;

  /// Details about your login page username field. See <span pulumi-lang-nodejs="`usernameField`" pulumi-lang-dotnet="`UsernameField`" pulumi-lang-go="`usernameField`" pulumi-lang-python="`username_field`" pulumi-lang-yaml="`usernameField`" pulumi-lang-java="`usernameField`">`username_field`</span> for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionUsernameField
      usernameField;

  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspection({
    required this.passwordField,
    required this.payloadType,
    required this.usernameField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['passwordField'] = passwordField.toMap();
    map['payloadType'] = payloadType;
    map['usernameField'] = usernameField.toMap();
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspection.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspection(
      passwordField:
          WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionPasswordField
              .fromMap((map['passwordField'] as Map).cast<String, dynamic>()),
      payloadType: map['payloadType'] as String,
      usernameField:
          WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionUsernameField
              .fromMap((map['usernameField'] as Map).cast<String, dynamic>()),
    );
  }
}

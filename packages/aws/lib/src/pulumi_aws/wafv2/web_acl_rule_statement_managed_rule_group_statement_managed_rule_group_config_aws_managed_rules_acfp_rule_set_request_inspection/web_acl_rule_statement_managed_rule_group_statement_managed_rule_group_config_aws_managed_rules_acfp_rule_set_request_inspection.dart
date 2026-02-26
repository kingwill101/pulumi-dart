// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_address_fields/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_address_fields.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_email_field/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_email_field.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_password_field/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_password_field.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_phone_number_fields/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_phone_number_fields.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_username_field/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_username_field.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection {
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields?
      addressFields;
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionEmailField?
      emailField;

  /// Details about your login page password field. See <span pulumi-lang-nodejs="`passwordField`" pulumi-lang-dotnet="`PasswordField`" pulumi-lang-go="`passwordField`" pulumi-lang-python="`password_field`" pulumi-lang-yaml="`passwordField`" pulumi-lang-java="`passwordField`">`password_field`</span> for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPasswordField?
      passwordField;

  /// The payload type for your login endpoint, either JSON or form encoded.
  final String payloadType;
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields?
      phoneNumberFields;

  /// Details about your login page username field. See <span pulumi-lang-nodejs="`usernameField`" pulumi-lang-dotnet="`UsernameField`" pulumi-lang-go="`usernameField`" pulumi-lang-python="`username_field`" pulumi-lang-yaml="`usernameField`" pulumi-lang-java="`usernameField`">`username_field`</span> for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionUsernameField?
      usernameField;

  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection({
    this.addressFields,
    this.emailField,
    this.passwordField,
    required this.payloadType,
    this.phoneNumberFields,
    this.usernameField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressFieldsValue = addressFields;
    if (addressFieldsValue != null) {
      map['addressFields'] = addressFieldsValue.toMap();
    }
    final emailFieldValue = emailField;
    if (emailFieldValue != null) {
      map['emailField'] = emailFieldValue.toMap();
    }
    final passwordFieldValue = passwordField;
    if (passwordFieldValue != null) {
      map['passwordField'] = passwordFieldValue.toMap();
    }
    map['payloadType'] = payloadType;
    final phoneNumberFieldsValue = phoneNumberFields;
    if (phoneNumberFieldsValue != null) {
      map['phoneNumberFields'] = phoneNumberFieldsValue.toMap();
    }
    final usernameFieldValue = usernameField;
    if (usernameFieldValue != null) {
      map['usernameField'] = usernameFieldValue.toMap();
    }
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection(
      addressFields: map['addressFields'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields
              .fromMap((map['addressFields'] as Map).cast<String, dynamic>()),
      emailField: map['emailField'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionEmailField
              .fromMap((map['emailField'] as Map).cast<String, dynamic>()),
      passwordField: map['passwordField'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPasswordField
              .fromMap((map['passwordField'] as Map).cast<String, dynamic>()),
      payloadType: map['payloadType'] as String,
      phoneNumberFields: map['phoneNumberFields'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields
              .fromMap(
                  (map['phoneNumberFields'] as Map).cast<String, dynamic>()),
      usernameField: map['usernameField'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionUsernameField
              .fromMap((map['usernameField'] as Map).cast<String, dynamic>()),
    );
  }
}

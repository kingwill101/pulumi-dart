// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_address_fields.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_email_field.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_password_field.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_phone_number_fields.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_username_field.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection {
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields? addressFields;
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionEmailField? emailField;
  /// Details about your login page password field. See `password_field` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPasswordField? passwordField;
  /// The payload type for your login endpoint, either JSON or form encoded.
  final String payloadType;
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields? phoneNumberFields;
  /// Details about your login page username field. See `username_field` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionUsernameField? usernameField;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection].
  /// [addressFields] Optional.
  /// [emailField] Optional.
  /// [passwordField] Details about your login page password field. See `password_field` for more details.
  /// [payloadType] The payload type for your login endpoint, either JSON or form encoded.
  /// [phoneNumberFields] Optional.
  /// [usernameField] Details about your login page username field. See `username_field` for more details.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection({
    this.addressFields,
    this.emailField,
    this.passwordField,
    required this.payloadType,
    this.phoneNumberFields,
    this.usernameField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFields': ?addressFields == null ? null : addressFields!.toMap(),
      'emailField': ?emailField == null ? null : emailField!.toMap(),
      'passwordField': ?passwordField == null ? null : passwordField!.toMap(),
      'payloadType': payloadType,
      'phoneNumberFields': ?phoneNumberFields == null ? null : phoneNumberFields!.toMap(),
      'usernameField': ?usernameField == null ? null : usernameField!.toMap(),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection(
      addressFields: map['addressFields'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields.fromMap((map['addressFields'] as Map).cast<String, dynamic>()),
      emailField: map['emailField'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionEmailField.fromMap((map['emailField'] as Map).cast<String, dynamic>()),
      passwordField: map['passwordField'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPasswordField.fromMap((map['passwordField'] as Map).cast<String, dynamic>()),
      payloadType: map['payloadType'] as String,
      phoneNumberFields: map['phoneNumberFields'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields.fromMap((map['phoneNumberFields'] as Map).cast<String, dynamic>()),
      usernameField: map['usernameField'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionUsernameField.fromMap((map['usernameField'] as Map).cast<String, dynamic>()),
    );
  }
}


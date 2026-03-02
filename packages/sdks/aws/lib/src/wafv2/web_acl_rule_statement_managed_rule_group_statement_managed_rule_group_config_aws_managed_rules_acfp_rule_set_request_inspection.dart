// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_address_fields.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_email_field.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_password_field.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_phone_number_fields.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection_username_field.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection {
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields>? addressFields;
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionEmailField>? emailField;
  /// Details about your login page password field. See `password_field` for more details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPasswordField>? passwordField;
  /// The payload type for your login endpoint, either JSON or form encoded.
  final pulumi.Input<String> payloadType;
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields>? phoneNumberFields;
  /// Details about your login page username field. See `username_field` for more details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionUsernameField>? usernameField;

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
      'addressFields': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields, Map<String, dynamic>>(addressFields, (value) => value.toMap()),
      'emailField': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionEmailField, Map<String, dynamic>>(emailField, (value) => value.toMap()),
      'passwordField': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPasswordField, Map<String, dynamic>>(passwordField, (value) => value.toMap()),
      'payloadType': payloadType,
      'phoneNumberFields': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields, Map<String, dynamic>>(phoneNumberFields, (value) => value.toMap()),
      'usernameField': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionUsernameField, Map<String, dynamic>>(usernameField, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection(
      addressFields: map['addressFields'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields.fromMap((map['addressFields']! as Map).cast<String, dynamic>())).input()).input(),
      emailField: map['emailField'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionEmailField.fromMap((map['emailField']! as Map).cast<String, dynamic>())).input()).input(),
      passwordField: map['passwordField'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPasswordField.fromMap((map['passwordField']! as Map).cast<String, dynamic>())).input()).input(),
      payloadType: (map['payloadType'] as String).input(),
      phoneNumberFields: map['phoneNumberFields'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields.fromMap((map['phoneNumberFields']! as Map).cast<String, dynamic>())).input()).input(),
      usernameField: map['usernameField'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionUsernameField.fromMap((map['usernameField']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_acfp_rule_set_request_inspection_address_fields.dart';
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_acfp_rule_set_request_inspection_email_field.dart';
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_acfp_rule_set_request_inspection_password_field.dart';
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_acfp_rule_set_request_inspection_phone_number_fields.dart';
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_acfp_rule_set_request_inspection_username_field.dart';

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection {
  /// Names of the fields in the request payload that contain your customer's primary physical address. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields>? addressFields;
  /// Name of the field in the request payload that contains your customer's email. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionEmailField>? emailField;
  /// Details about your login page password field. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPasswordField>? passwordField;
  /// Payload type for your login endpoint, either JSON or form encoded.
  final pulumi.Input<String> payloadType;
  /// Names of the fields in the request payload that contain your customer's primary phone number. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields>? phoneNumberFields;
  /// Details about your login page username field. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionUsernameField>? usernameField;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection].
  /// [addressFields] Names of the fields in the request payload that contain your customer's primary physical address. See below.
  /// [emailField] Name of the field in the request payload that contains your customer's email. See below.
  /// [passwordField] Details about your login page password field. See below.
  /// [payloadType] Payload type for your login endpoint, either JSON or form encoded.
  /// [phoneNumberFields] Names of the fields in the request payload that contain your customer's primary phone number. See below.
  /// [usernameField] Details about your login page username field. See below.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection({
    this.addressFields,
    this.emailField,
    this.passwordField,
    required this.payloadType,
    this.phoneNumberFields,
    this.usernameField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFields': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields, Map<String, dynamic>>(addressFields, (value) => value.toMap()),
      'emailField': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionEmailField, Map<String, dynamic>>(emailField, (value) => value.toMap()),
      'passwordField': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPasswordField, Map<String, dynamic>>(passwordField, (value) => value.toMap()),
      'payloadType': payloadType,
      'phoneNumberFields': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields, Map<String, dynamic>>(phoneNumberFields, (value) => value.toMap()),
      'usernameField': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionUsernameField, Map<String, dynamic>>(usernameField, (value) => value.toMap()),
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection(
      addressFields: (() { final guardedValue = map['addressFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailField: (() { final guardedValue = map['emailField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionEmailField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      passwordField: (() { final guardedValue = map['passwordField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPasswordField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      payloadType: pulumi.Input.fromValue(map['payloadType'] as String),
      phoneNumberFields: (() { final guardedValue = map['phoneNumberFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      usernameField: (() { final guardedValue = map['usernameField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionUsernameField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_atp_rule_set_request_inspection_password_field.dart';
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_atp_rule_set_request_inspection_username_field.dart';

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection {
  /// Details about your login page password field. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspectionPasswordField>? passwordField;
  /// Payload type for your login endpoint, either JSON or form encoded.
  final pulumi.Input<String> payloadType;
  /// Details about your login page username field. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspectionUsernameField>? usernameField;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection].
  /// [passwordField] Details about your login page password field. See below.
  /// [payloadType] Payload type for your login endpoint, either JSON or form encoded.
  /// [usernameField] Details about your login page username field. See below.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection({
    this.passwordField,
    required this.payloadType,
    this.usernameField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordField': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspectionPasswordField, Map<String, dynamic>>(passwordField, (value) => value.toMap()),
      'payloadType': payloadType,
      'usernameField': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspectionUsernameField, Map<String, dynamic>>(usernameField, (value) => value.toMap()),
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection(
      passwordField: (() { final guardedValue = map['passwordField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspectionPasswordField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      payloadType: pulumi.Input.fromValue(map['payloadType'] as String),
      usernameField: (() { final guardedValue = map['usernameField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspectionUsernameField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

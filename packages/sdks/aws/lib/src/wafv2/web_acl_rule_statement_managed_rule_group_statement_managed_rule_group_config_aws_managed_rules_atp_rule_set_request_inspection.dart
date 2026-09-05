// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_request_inspection_password_field.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_request_inspection_username_field.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspection {
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionPasswordField?>? passwordField;
  final pulumi.Input<String> payloadType;
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionUsernameField?>? usernameField;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspection].
  /// [passwordField] Optional.
  /// [payloadType] Required.
  /// [usernameField] Optional.
  const WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspection({
    this.passwordField,
    required this.payloadType,
    this.usernameField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordField': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionPasswordField, Map<String, dynamic>>(passwordField, (value) => value.toMap()),
      'payloadType': payloadType,
      'usernameField': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionUsernameField, Map<String, dynamic>>(usernameField, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspection.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspection(
      passwordField: (() { final guardedValue = map['passwordField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionPasswordField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      payloadType: pulumi.Input.fromValue(map['payloadType'] as String),
      usernameField: (() { final guardedValue = map['usernameField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionUsernameField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

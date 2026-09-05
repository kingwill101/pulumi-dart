// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_anti_ddos_rule_set.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_bot_control_rule_set.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_password_field.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_username_field.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig {
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet?>? awsManagedRulesAcfpRuleSet;
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet?>? awsManagedRulesAntiDdosRuleSet;
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSet?>? awsManagedRulesAtpRuleSet;
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet?>? awsManagedRulesBotControlRuleSet;
  final pulumi.Input<String?>? loginPath;
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigPasswordField?>? passwordField;
  final pulumi.Input<String?>? payloadType;
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField?>? usernameField;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig].
  /// [awsManagedRulesAcfpRuleSet] Optional.
  /// [awsManagedRulesAntiDdosRuleSet] Optional.
  /// [awsManagedRulesAtpRuleSet] Optional.
  /// [awsManagedRulesBotControlRuleSet] Optional.
  /// [loginPath] Optional.
  /// [passwordField] Optional.
  /// [payloadType] Optional.
  /// [usernameField] Optional.
  const WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig({
    this.awsManagedRulesAcfpRuleSet,
    this.awsManagedRulesAntiDdosRuleSet,
    this.awsManagedRulesAtpRuleSet,
    this.awsManagedRulesBotControlRuleSet,
    this.loginPath,
    this.passwordField,
    this.payloadType,
    this.usernameField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsManagedRulesAcfpRuleSet': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet, Map<String, dynamic>>(awsManagedRulesAcfpRuleSet, (value) => value.toMap()),
      'awsManagedRulesAntiDdosRuleSet': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet, Map<String, dynamic>>(awsManagedRulesAntiDdosRuleSet, (value) => value.toMap()),
      'awsManagedRulesAtpRuleSet': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSet, Map<String, dynamic>>(awsManagedRulesAtpRuleSet, (value) => value.toMap()),
      'awsManagedRulesBotControlRuleSet': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet, Map<String, dynamic>>(awsManagedRulesBotControlRuleSet, (value) => value.toMap()),
      'loginPath': ?loginPath,
      'passwordField': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigPasswordField, Map<String, dynamic>>(passwordField, (value) => value.toMap()),
      'payloadType': ?payloadType,
      'usernameField': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField, Map<String, dynamic>>(usernameField, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig(
      awsManagedRulesAcfpRuleSet: (() { final guardedValue = map['awsManagedRulesAcfpRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsManagedRulesAntiDdosRuleSet: (() { final guardedValue = map['awsManagedRulesAntiDdosRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsManagedRulesAtpRuleSet: (() { final guardedValue = map['awsManagedRulesAtpRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsManagedRulesBotControlRuleSet: (() { final guardedValue = map['awsManagedRulesBotControlRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loginPath: (() { final guardedValue = map['loginPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordField: (() { final guardedValue = map['passwordField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigPasswordField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      payloadType: (() { final guardedValue = map['payloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usernameField: (() { final guardedValue = map['usernameField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

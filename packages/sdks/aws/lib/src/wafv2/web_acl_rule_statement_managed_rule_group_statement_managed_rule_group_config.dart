// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_anti_ddos_rule_set.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_bot_control_rule_set.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_password_field.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_username_field.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig {
  /// Additional configuration for using the Account Creation Fraud Prevention managed rule group. Use this to specify information such as the registration page of your application and the type of content to accept or reject from the client.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet>? awsManagedRulesAcfpRuleSet;
  /// Configuration for using the anti-DDoS managed rule group. See `aws_managed_rules_anti_ddos_rule_set` for more details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet>? awsManagedRulesAntiDdosRuleSet;
  /// Additional configuration for using the Account Takeover Protection managed rule group. Use this to specify information such as the sign-in page of your application and the type of content to accept or reject from the client.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSet>? awsManagedRulesAtpRuleSet;
  /// Additional configuration for using the Bot Control managed rule group. Use this to specify the inspection level that you want to use. See `aws_managed_rules_bot_control_rule_set` for more details
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet>? awsManagedRulesBotControlRuleSet;
  /// The path of the login endpoint for your application.
  final pulumi.Input<String>? loginPath;
  /// Details about your login page password field. See `password_field` for more details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigPasswordField>? passwordField;
  /// The payload type for your login endpoint, either JSON or form encoded.
  final pulumi.Input<String>? payloadType;
  /// Details about your login page username field. See `username_field` for more details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField>? usernameField;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig].
  /// [awsManagedRulesAcfpRuleSet] Additional configuration for using the Account Creation Fraud Prevention managed rule group. Use this to specify information such as the registration page of your application and the type of content to accept or reject from the client.
  /// [awsManagedRulesAntiDdosRuleSet] Configuration for using the anti-DDoS managed rule group. See `aws_managed_rules_anti_ddos_rule_set` for more details.
  /// [awsManagedRulesAtpRuleSet] Additional configuration for using the Account Takeover Protection managed rule group. Use this to specify information such as the sign-in page of your application and the type of content to accept or reject from the client.
  /// [awsManagedRulesBotControlRuleSet] Additional configuration for using the Bot Control managed rule group. Use this to specify the inspection level that you want to use. See `aws_managed_rules_bot_control_rule_set` for more details
  /// [loginPath] The path of the login endpoint for your application.
  /// [passwordField] Details about your login page password field. See `password_field` for more details.
  /// [payloadType] The payload type for your login endpoint, either JSON or form encoded.
  /// [usernameField] Details about your login page username field. See `username_field` for more details.
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


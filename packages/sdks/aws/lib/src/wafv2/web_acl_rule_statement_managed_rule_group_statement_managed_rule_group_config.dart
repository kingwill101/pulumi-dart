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
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig({
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
      awsManagedRulesAcfpRuleSet: map['awsManagedRulesAcfpRuleSet'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet.fromMap((map['awsManagedRulesAcfpRuleSet']! as Map).cast<String, dynamic>())).input()).input(),
      awsManagedRulesAntiDdosRuleSet: map['awsManagedRulesAntiDdosRuleSet'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet.fromMap((map['awsManagedRulesAntiDdosRuleSet']! as Map).cast<String, dynamic>())).input()).input(),
      awsManagedRulesAtpRuleSet: map['awsManagedRulesAtpRuleSet'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSet.fromMap((map['awsManagedRulesAtpRuleSet']! as Map).cast<String, dynamic>())).input()).input(),
      awsManagedRulesBotControlRuleSet: map['awsManagedRulesBotControlRuleSet'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet.fromMap((map['awsManagedRulesBotControlRuleSet']! as Map).cast<String, dynamic>())).input()).input(),
      loginPath: map['loginPath'] == null ? null : ((map['loginPath'] as String).input()).input(),
      passwordField: map['passwordField'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigPasswordField.fromMap((map['passwordField']! as Map).cast<String, dynamic>())).input()).input(),
      payloadType: map['payloadType'] == null ? null : ((map['payloadType'] as String).input()).input(),
      usernameField: map['usernameField'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField.fromMap((map['usernameField']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


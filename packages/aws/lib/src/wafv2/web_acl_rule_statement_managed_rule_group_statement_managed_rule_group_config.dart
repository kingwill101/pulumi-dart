// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_anti_ddos_rule_set.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_bot_control_rule_set.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_password_field.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_username_field.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig {
  /// Additional configuration for using the Account Creation Fraud Prevention managed rule group. Use this to specify information such as the registration page of your application and the type of content to accept or reject from the client.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet?
  awsManagedRulesAcfpRuleSet;

  /// Configuration for using the anti-DDoS managed rule group. See `aws_managed_rules_anti_ddos_rule_set` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet?
  awsManagedRulesAntiDdosRuleSet;

  /// Additional configuration for using the Account Takeover Protection managed rule group. Use this to specify information such as the sign-in page of your application and the type of content to accept or reject from the client.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSet?
  awsManagedRulesAtpRuleSet;

  /// Additional configuration for using the Bot Control managed rule group. Use this to specify the inspection level that you want to use. See `aws_managed_rules_bot_control_rule_set` for more details
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet?
  awsManagedRulesBotControlRuleSet;

  /// The path of the login endpoint for your application.
  final String? loginPath;

  /// Details about your login page password field. See `password_field` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigPasswordField?
  passwordField;

  /// The payload type for your login endpoint, either JSON or form encoded.
  final String? payloadType;

  /// Details about your login page username field. See `username_field` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField?
  usernameField;

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
      'awsManagedRulesAcfpRuleSet': ?awsManagedRulesAcfpRuleSet == null
          ? null
          : awsManagedRulesAcfpRuleSet!.toMap(),
      'awsManagedRulesAntiDdosRuleSet': ?awsManagedRulesAntiDdosRuleSet == null
          ? null
          : awsManagedRulesAntiDdosRuleSet!.toMap(),
      'awsManagedRulesAtpRuleSet': ?awsManagedRulesAtpRuleSet == null
          ? null
          : awsManagedRulesAtpRuleSet!.toMap(),
      'awsManagedRulesBotControlRuleSet':
          ?awsManagedRulesBotControlRuleSet == null
          ? null
          : awsManagedRulesBotControlRuleSet!.toMap(),
      'loginPath': ?loginPath,
      'passwordField': ?passwordField == null ? null : passwordField!.toMap(),
      'payloadType': ?payloadType,
      'usernameField': ?usernameField == null ? null : usernameField!.toMap(),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig(
      awsManagedRulesAcfpRuleSet: map['awsManagedRulesAcfpRuleSet'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet.fromMap(
              (map['awsManagedRulesAcfpRuleSet'] as Map)
                  .cast<String, dynamic>(),
            ),
      awsManagedRulesAntiDdosRuleSet:
          map['awsManagedRulesAntiDdosRuleSet'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet.fromMap(
              (map['awsManagedRulesAntiDdosRuleSet'] as Map)
                  .cast<String, dynamic>(),
            ),
      awsManagedRulesAtpRuleSet: map['awsManagedRulesAtpRuleSet'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSet.fromMap(
              (map['awsManagedRulesAtpRuleSet'] as Map).cast<String, dynamic>(),
            ),
      awsManagedRulesBotControlRuleSet:
          map['awsManagedRulesBotControlRuleSet'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesBotControlRuleSet.fromMap(
              (map['awsManagedRulesBotControlRuleSet'] as Map)
                  .cast<String, dynamic>(),
            ),
      loginPath: map['loginPath'] == null ? null : map['loginPath'] as String,
      passwordField: map['passwordField'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigPasswordField.fromMap(
              (map['passwordField'] as Map).cast<String, dynamic>(),
            ),
      payloadType: map['payloadType'] == null
          ? null
          : map['payloadType'] as String,
      usernameField: map['usernameField'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField.fromMap(
              (map['usernameField'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

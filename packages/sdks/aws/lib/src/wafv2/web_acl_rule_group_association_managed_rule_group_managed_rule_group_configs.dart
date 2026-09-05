// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_acfp_rule_set.dart';
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_anti_ddos_rule_set.dart';
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_atp_rule_set.dart';
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_bot_control_rule_set.dart';

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigs {
  /// Additional configuration for using the Account Creation Fraud Prevention managed rule group. Use this to specify information such as the registration page of your application and the type of content to accept or reject from the client. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet?>? awsManagedRulesAcfpRuleSet;
  /// Configuration for using the anti-DDoS managed rule group. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet?>? awsManagedRulesAntiDdosRuleSet;
  /// Additional configuration for using the Account Takeover Protection managed rule group. Use this to specify information such as the sign-in page of your application and the type of content to accept or reject from the client. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet?>? awsManagedRulesAtpRuleSet;
  /// Additional configuration for using the Bot Control managed rule group. Use this to specify the inspection level that you want to use. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet?>? awsManagedRulesBotControlRuleSet;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigs].
  /// [awsManagedRulesAcfpRuleSet] Additional configuration for using the Account Creation Fraud Prevention managed rule group. Use this to specify information such as the registration page of your application and the type of content to accept or reject from the client. See below.
  /// [awsManagedRulesAntiDdosRuleSet] Configuration for using the anti-DDoS managed rule group. See below.
  /// [awsManagedRulesAtpRuleSet] Additional configuration for using the Account Takeover Protection managed rule group. Use this to specify information such as the sign-in page of your application and the type of content to accept or reject from the client. See below.
  /// [awsManagedRulesBotControlRuleSet] Additional configuration for using the Bot Control managed rule group. Use this to specify the inspection level that you want to use. See below.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigs({
    this.awsManagedRulesAcfpRuleSet,
    this.awsManagedRulesAntiDdosRuleSet,
    this.awsManagedRulesAtpRuleSet,
    this.awsManagedRulesBotControlRuleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsManagedRulesAcfpRuleSet': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet, Map<String, dynamic>>(awsManagedRulesAcfpRuleSet, (value) => value.toMap()),
      'awsManagedRulesAntiDdosRuleSet': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet, Map<String, dynamic>>(awsManagedRulesAntiDdosRuleSet, (value) => value.toMap()),
      'awsManagedRulesAtpRuleSet': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet, Map<String, dynamic>>(awsManagedRulesAtpRuleSet, (value) => value.toMap()),
      'awsManagedRulesBotControlRuleSet': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet, Map<String, dynamic>>(awsManagedRulesBotControlRuleSet, (value) => value.toMap()),
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigs.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigs(
      awsManagedRulesAcfpRuleSet: (() { final guardedValue = map['awsManagedRulesAcfpRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsManagedRulesAntiDdosRuleSet: (() { final guardedValue = map['awsManagedRulesAntiDdosRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsManagedRulesAtpRuleSet: (() { final guardedValue = map['awsManagedRulesAtpRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsManagedRulesBotControlRuleSet: (() { final guardedValue = map['awsManagedRulesBotControlRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesBotControlRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

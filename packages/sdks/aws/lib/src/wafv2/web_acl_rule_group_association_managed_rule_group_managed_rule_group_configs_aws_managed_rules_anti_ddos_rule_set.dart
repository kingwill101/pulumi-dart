// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_anti_ddos_rule_set_client_side_action_config.dart';

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet {
  /// Configuration for the request handling that's applied by the managed rule group rules `ChallengeAllDuringEvent` and `ChallengeDDoSRequests` during a distributed denial of service (DDoS) attack. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfig?>? clientSideActionConfig;
  /// Sensitivity that the rule group rule DDoSRequests uses when matching against the DDoS suspicion labeling on a request. Valid values are `LOW` (Default), `MEDIUM`, and `HIGH`.
  final pulumi.Input<String?>? sensitivityToBlock;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet].
  /// [clientSideActionConfig] Configuration for the request handling that's applied by the managed rule group rules `ChallengeAllDuringEvent` and `ChallengeDDoSRequests` during a distributed denial of service (DDoS) attack. See below.
  /// [sensitivityToBlock] Sensitivity that the rule group rule DDoSRequests uses when matching against the DDoS suspicion labeling on a request. Valid values are `LOW` (Default), `MEDIUM`, and `HIGH`.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet({
    this.clientSideActionConfig,
    this.sensitivityToBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSideActionConfig': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfig, Map<String, dynamic>>(clientSideActionConfig, (value) => value.toMap()),
      'sensitivityToBlock': ?sensitivityToBlock,
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSet(
      clientSideActionConfig: (() { final guardedValue = map['clientSideActionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sensitivityToBlock: (() { final guardedValue = map['sensitivityToBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

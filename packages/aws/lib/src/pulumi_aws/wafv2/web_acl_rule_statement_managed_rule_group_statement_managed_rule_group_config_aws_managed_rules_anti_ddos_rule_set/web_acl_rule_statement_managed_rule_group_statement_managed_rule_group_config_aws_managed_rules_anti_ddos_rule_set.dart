// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_anti_ddos_rule_set_client_side_action_config/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_anti_ddos_rule_set_client_side_action_config.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet {
  /// Configuration for the request handling that's applied by the managed rule group rules `ChallengeAllDuringEvent` and `ChallengeDDoSRequests` during a distributed denial of service (DDoS) attack. See `client_side_action_config` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfig
      clientSideActionConfig;

  /// Sensitivity that the rule group rule DDoSRequests uses when matching against the DDoS suspicion labeling on a request. Valid values are `LOW` (Default), `MEDIUM`, and `HIGH`.
  final String? sensitivityToBlock;

  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet({
    required this.clientSideActionConfig,
    this.sensitivityToBlock,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientSideActionConfig'] = clientSideActionConfig.toMap();
    final sensitivityToBlockValue = sensitivityToBlock;
    if (sensitivityToBlockValue != null) {
      map['sensitivityToBlock'] = sensitivityToBlockValue;
    }
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet(
      clientSideActionConfig:
          WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfig
              .fromMap((map['clientSideActionConfig'] as Map)
                  .cast<String, dynamic>()),
      sensitivityToBlock: map['sensitivityToBlock'] == null
          ? null
          : map['sensitivityToBlock'] as String,
    );
  }
}

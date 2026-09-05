// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_anti_ddos_rule_set_client_side_action_config.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet {
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfig?>? clientSideActionConfig;
  final pulumi.Input<String?>? sensitivityToBlock;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet].
  /// [clientSideActionConfig] Optional.
  /// [sensitivityToBlock] Optional.
  const WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet({
    this.clientSideActionConfig,
    this.sensitivityToBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSideActionConfig': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfig, Map<String, dynamic>>(clientSideActionConfig, (value) => value.toMap()),
      'sensitivityToBlock': ?sensitivityToBlock,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSet(
      clientSideActionConfig: (() { final guardedValue = map['clientSideActionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sensitivityToBlock: (() { final guardedValue = map['sensitivityToBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

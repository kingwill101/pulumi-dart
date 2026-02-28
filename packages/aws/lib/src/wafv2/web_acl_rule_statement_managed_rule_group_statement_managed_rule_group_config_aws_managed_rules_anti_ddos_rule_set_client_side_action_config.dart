// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_anti_ddos_rule_set_client_side_action_config_challenge.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfig {
  /// Configuration for the use of the `AWSManagedRulesAntiDDoSRuleSet` rules `ChallengeAllDuringEvent` and `ChallengeDDoSRequests`.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge
      challenge;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfig].
  /// [challenge] Configuration for the use of the `AWSManagedRulesAntiDDoSRuleSet` rules `ChallengeAllDuringEvent` and `ChallengeDDoSRequests`.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfig({
    required this.challenge,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['challenge'] = challenge.toMap();
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfig.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfig(
      challenge:
          WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge
              .fromMap((map['challenge'] as Map).cast<String, dynamic>()),
    );
  }
}

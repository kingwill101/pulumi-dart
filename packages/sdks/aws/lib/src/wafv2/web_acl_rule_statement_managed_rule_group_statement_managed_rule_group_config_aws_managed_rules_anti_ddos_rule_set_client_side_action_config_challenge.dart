// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_anti_ddos_rule_set_client_side_action_config_challenge_exempt_uri_regular_expression.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge {
  final pulumi.Input<List<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression>>? exemptUriRegularExpressions;
  final pulumi.Input<String>? sensitivity;
  final pulumi.Input<String> usageOfAction;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge].
  /// [exemptUriRegularExpressions] Optional.
  /// [sensitivity] Optional.
  /// [usageOfAction] Required.
  const WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge({
    this.exemptUriRegularExpressions,
    this.sensitivity,
    required this.usageOfAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptUriRegularExpressions': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression>, List<Map<String, dynamic>>>(exemptUriRegularExpressions, (value) => pulumi.Input.encodeList<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sensitivity': ?sensitivity,
      'usageOfAction': usageOfAction,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge(
      exemptUriRegularExpressions: (() { final guardedValue = map['exemptUriRegularExpressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression>(guardedValue, (value) => WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sensitivity: (() { final guardedValue = map['sensitivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageOfAction: pulumi.Input.fromValue(map['usageOfAction'] as String),
    );
  }
}

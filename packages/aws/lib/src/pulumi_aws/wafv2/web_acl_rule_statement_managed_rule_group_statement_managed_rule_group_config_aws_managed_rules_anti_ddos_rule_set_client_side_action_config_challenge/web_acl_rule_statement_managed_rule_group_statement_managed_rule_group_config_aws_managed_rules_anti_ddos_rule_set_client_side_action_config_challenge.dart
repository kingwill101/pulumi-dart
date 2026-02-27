// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_anti_ddos_rule_set_client_side_action_config_challenge_exempt_uri_regular_expression/web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_anti_ddos_rule_set_client_side_action_config_challenge_exempt_uri_regular_expression.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge {
  /// Block for the list of the regular expressions to match against the web request URI, used to identify requests that can't handle a silent browser challenge.
  final List<
          WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression>?
      exemptUriRegularExpressions;

  /// Sensitivity that the rule group rule ChallengeDDoSRequests uses when matching against the DDoS suspicion labeling on a request. Valid values are `LOW`, `MEDIUM` and `HIGH` (Default).
  final String? sensitivity;

  /// Configuration whether to use the `AWSManagedRulesAntiDDoSRuleSet` rules `ChallengeAllDuringEvent` and `ChallengeDDoSRequests` in the rule group evaluation. Valid values are `ENABLED` and `DISABLED`.
  final String usageOfAction;

  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge({
    this.exemptUriRegularExpressions,
    this.sensitivity,
    required this.usageOfAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exemptUriRegularExpressionsValue = exemptUriRegularExpressions;
    if (exemptUriRegularExpressionsValue != null) {
      map['exemptUriRegularExpressions'] = pulumi.Input.encodeList<
              WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression,
              Map<String, dynamic>>(
          exemptUriRegularExpressionsValue, (value) => value.toMap());
    }
    final sensitivityValue = sensitivity;
    if (sensitivityValue != null) {
      map['sensitivity'] = sensitivityValue;
    }
    map['usageOfAction'] = usageOfAction;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge(
      exemptUriRegularExpressions: map['exemptUriRegularExpressions'] == null
          ? null
          : pulumi.Input.decodeList<
                  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression>(
              map['exemptUriRegularExpressions'],
              (value) =>
                  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression
                      .fromMap((value as Map).cast<String, dynamic>())),
      sensitivity:
          map['sensitivity'] == null ? null : map['sensitivity'] as String,
      usageOfAction: map['usageOfAction'] as String,
    );
  }
}

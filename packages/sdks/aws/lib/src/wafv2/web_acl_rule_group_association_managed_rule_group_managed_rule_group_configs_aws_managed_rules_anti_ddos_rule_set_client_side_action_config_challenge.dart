// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_anti_ddos_rule_set_client_side_action_config_challenge_exempt_uri_regular_expression.dart';

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge {
  /// Block for the list of the regular expressions to match against the web request URI, used to identify requests that can't handle a silent browser challenge. See below.
  final pulumi.Input<List<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression>?>? exemptUriRegularExpressions;
  /// Sensitivity that the rule group rule ChallengeDDoSRequests uses when matching against the DDoS suspicion labeling on a request. Valid values are `LOW`, `MEDIUM` and `HIGH` (Default).
  final pulumi.Input<String?>? sensitivity;
  /// Configuration whether to use the `AWSManagedRulesAntiDDoSRuleSet` rules `ChallengeAllDuringEvent` and `ChallengeDDoSRequests` in the rule group evaluation. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String> usageOfAction;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge].
  /// [exemptUriRegularExpressions] Block for the list of the regular expressions to match against the web request URI, used to identify requests that can't handle a silent browser challenge. See below.
  /// [sensitivity] Sensitivity that the rule group rule ChallengeDDoSRequests uses when matching against the DDoS suspicion labeling on a request. Valid values are `LOW`, `MEDIUM` and `HIGH` (Default).
  /// [usageOfAction] Configuration whether to use the `AWSManagedRulesAntiDDoSRuleSet` rules `ChallengeAllDuringEvent` and `ChallengeDDoSRequests` in the rule group evaluation. Valid values are `ENABLED` and `DISABLED`.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge({
    this.exemptUriRegularExpressions,
    this.sensitivity,
    required this.usageOfAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptUriRegularExpressions': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression>, List<Map<String, dynamic>>>(exemptUriRegularExpressions, (value) => pulumi.Input.encodeList<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sensitivity': ?sensitivity,
      'usageOfAction': usageOfAction,
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallenge(
      exemptUriRegularExpressions: (() { final guardedValue = map['exemptUriRegularExpressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression>(guardedValue, (value) => WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sensitivity: (() { final guardedValue = map['sensitivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageOfAction: pulumi.Input.fromValue(map['usageOfAction'] as String),
    );
  }
}

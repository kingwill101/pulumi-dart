// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_challenge_custom_request_handling.dart';

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallenge {
  /// Custom handling for challenge requests. See below.
  final WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling? customRequestHandling;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallenge].
  /// [customRequestHandling] Custom handling for challenge requests. See below.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallenge({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?customRequestHandling == null ? null : customRequestHandling!.toMap(),
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallenge.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallenge(
      customRequestHandling: map['customRequestHandling'] == null ? null : WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling.fromMap((map['customRequestHandling'] as Map).cast<String, dynamic>()),
    );
  }
}


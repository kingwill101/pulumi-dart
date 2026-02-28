// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_challenge_custom_request_handling.dart';

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallenge {
  /// Custom handling for challenge requests. See below.
  final WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandling?
      customRequestHandling;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallenge].
  /// [customRequestHandling] Custom handling for challenge requests. See below.
  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallenge({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customRequestHandlingValue = customRequestHandling;
    if (customRequestHandlingValue != null) {
      map['customRequestHandling'] = customRequestHandlingValue.toMap();
    }
    return map;
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallenge.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallenge(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandling
              .fromMap((map['customRequestHandling'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}

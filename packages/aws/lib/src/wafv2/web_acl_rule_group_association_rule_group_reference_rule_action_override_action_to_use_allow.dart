// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_allow_custom_request_handling.dart';

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllow {
  /// Custom handling for allowed requests. See below.
  final WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandling?
  customRequestHandling;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllow].
  /// [customRequestHandling] Custom handling for allowed requests. See below.
  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllow({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?customRequestHandling == null
          ? null
          : customRequestHandling!.toMap(),
    };
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllow.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllow(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandling.fromMap(
              (map['customRequestHandling'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_count_custom_request_handling.dart';

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCount {
  /// Custom handling for counted requests. See below.
  final WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandling?
      customRequestHandling;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCount].
  /// [customRequestHandling] Custom handling for counted requests. See below.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCount({
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

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCount.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCount(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandling
              .fromMap((map['customRequestHandling'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use.dart';

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride {
  /// Action to use instead of the rule's original action. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse>? actionToUse;
  /// Name of the rule to override within the rule group. Verify the name carefully. With managed rule groups, WAF silently ignores any override that uses an invalid rule name. With customer-owned rule groups, invalid rule names in your overrides will cause web ACL updates to fail. An invalid rule name is any name that doesn't exactly match the case-sensitive name of an existing rule in the rule group.
  final pulumi.Input<String> name;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride].
  /// [actionToUse] Action to use instead of the rule's original action. See below.
  /// [name] Name of the rule to override within the rule group. Verify the name carefully. With managed rule groups, WAF silently ignores any override that uses an invalid rule name. With customer-owned rule groups, invalid rule names in your overrides will cause web ACL updates to fail. An invalid rule name is any name that doesn't exactly match the case-sensitive name of an existing rule in the rule group.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride({
    this.actionToUse,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionToUse': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse, Map<String, dynamic>>(actionToUse, (value) => value.toMap()),
      'name': name,
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride(
      actionToUse: map['actionToUse'] == null ? null : (WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse.fromMap((map['actionToUse'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use.dart';

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride {
  /// Action to use instead of the rule's original action. See below.
  final pulumi.Input<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUse>? actionToUse;
  /// Name of the rule to override within the rule group. Verify the name carefully. With managed rule groups, WAF silently ignores any override that uses an invalid rule name. With customer-owned rule groups, invalid rule names in your overrides will cause web ACL updates to fail. An invalid rule name is any name that doesn't exactly match the case-sensitive name of an existing rule in the rule group.
  final pulumi.Input<String> name;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride].
  /// [actionToUse] Action to use instead of the rule's original action. See below.
  /// [name] Name of the rule to override within the rule group. Verify the name carefully. With managed rule groups, WAF silently ignores any override that uses an invalid rule name. With customer-owned rule groups, invalid rule names in your overrides will cause web ACL updates to fail. An invalid rule name is any name that doesn't exactly match the case-sensitive name of an existing rule in the rule group.
  const WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride({
    this.actionToUse,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionToUse': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUse, Map<String, dynamic>>(actionToUse, (value) => value.toMap()),
      'name': name,
    };
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride(
      actionToUse: (() { final guardedValue = map['actionToUse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

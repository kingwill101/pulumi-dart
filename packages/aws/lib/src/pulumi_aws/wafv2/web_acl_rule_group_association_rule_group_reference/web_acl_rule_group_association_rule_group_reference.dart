// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_group_association_rule_group_reference_rule_action_override/web_acl_rule_group_association_rule_group_reference_rule_action_override.dart';

class WebAclRuleGroupAssociationRuleGroupReference {
  /// ARN of the Rule Group to associate with the Web ACL.
  final String arn;

  /// Override actions for specific rules within the rule group. See below.
  final List<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride>?
      ruleActionOverrides;

  WebAclRuleGroupAssociationRuleGroupReference({
    required this.arn,
    this.ruleActionOverrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final ruleActionOverridesValue = ruleActionOverrides;
    if (ruleActionOverridesValue != null) {
      map['ruleActionOverrides'] = Input.encodeList<
              WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride,
              Map<String, dynamic>>(
          ruleActionOverridesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclRuleGroupAssociationRuleGroupReference.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationRuleGroupReference(
      arn: map['arn'] as String,
      ruleActionOverrides: map['ruleActionOverrides'] == null
          ? null
          : Input.decodeList<
                  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride>(
              map['ruleActionOverrides'],
              (value) =>
                  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

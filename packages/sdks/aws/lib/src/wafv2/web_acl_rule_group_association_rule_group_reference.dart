// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_rule_group_reference_rule_action_override.dart';

class WebAclRuleGroupAssociationRuleGroupReference {
  /// ARN of the Rule Group to associate with the Web ACL.
  final pulumi.Input<String> arn;
  /// Override actions for specific rules within the rule group. See below.
  final pulumi.Input<List<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride>>? ruleActionOverrides;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReference].
  /// [arn] ARN of the Rule Group to associate with the Web ACL.
  /// [ruleActionOverrides] Override actions for specific rules within the rule group. See below.
  WebAclRuleGroupAssociationRuleGroupReference({
    required this.arn,
    this.ruleActionOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'ruleActionOverrides': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride>, List<Map<String, dynamic>>>(ruleActionOverrides, (value) => pulumi.Input.encodeList<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleGroupAssociationRuleGroupReference.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationRuleGroupReference(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      ruleActionOverrides: (() { final guardedValue = map['ruleActionOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride>(guardedValue, (value) => WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


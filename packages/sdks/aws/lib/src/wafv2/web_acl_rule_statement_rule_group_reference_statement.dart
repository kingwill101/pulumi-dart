// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override.dart';

class WebAclRuleStatementRuleGroupReferenceStatement {
  /// The Amazon Resource Name (ARN) of the `aws.wafv2.RuleGroup` resource.
  final pulumi.Input<String> arn;
  /// Action settings to use in the place of the rule actions that are configured inside the rule group. You specify one override for each rule whose action you want to change. See `rule_action_override` below for details.
  final pulumi.Input<List<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride>>? ruleActionOverrides;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatement].
  /// [arn] The Amazon Resource Name (ARN) of the `aws.wafv2.RuleGroup` resource.
  /// [ruleActionOverrides] Action settings to use in the place of the rule actions that are configured inside the rule group. You specify one override for each rule whose action you want to change. See `rule_action_override` below for details.
  WebAclRuleStatementRuleGroupReferenceStatement({
    required this.arn,
    this.ruleActionOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'ruleActionOverrides': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride>, List<Map<String, dynamic>>>(ruleActionOverrides, (value) => pulumi.Input.encodeList<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRuleGroupReferenceStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatement(
      arn: (map['arn'] as String).input(),
      ruleActionOverrides: map['ruleActionOverrides'] == null ? null : ((pulumi.Input.decodeList<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride>(map['ruleActionOverrides']!, (value) => WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}


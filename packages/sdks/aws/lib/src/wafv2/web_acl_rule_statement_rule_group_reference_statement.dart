// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rule_group_reference_statement_excluded_rule.dart';
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override.dart';

class WebAclRuleStatementRuleGroupReferenceStatement {
  /// ARN of the rule group to reference.
  final pulumi.Input<String> arn;
  /// Rules to exclude from the rule group. See Excluded Rule below.
  final pulumi.Input<List<WebAclRuleStatementRuleGroupReferenceStatementExcludedRule>>? excludedRules;
  /// Override actions for specific rules within the rule group. See Rule Action Override below.
  final pulumi.Input<List<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride>>? ruleActionOverrides;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatement].
  /// [arn] ARN of the rule group to reference.
  /// [excludedRules] Rules to exclude from the rule group. See Excluded Rule below.
  /// [ruleActionOverrides] Override actions for specific rules within the rule group. See Rule Action Override below.
  const WebAclRuleStatementRuleGroupReferenceStatement({
    required this.arn,
    this.excludedRules,
    this.ruleActionOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'excludedRules': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRuleGroupReferenceStatementExcludedRule>, List<Map<String, dynamic>>>(excludedRules, (value) => pulumi.Input.encodeList<WebAclRuleStatementRuleGroupReferenceStatementExcludedRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleActionOverrides': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride>, List<Map<String, dynamic>>>(ruleActionOverrides, (value) => pulumi.Input.encodeList<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRuleGroupReferenceStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatement(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      excludedRules: (() { final guardedValue = map['excludedRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRuleGroupReferenceStatementExcludedRule>(guardedValue, (value) => WebAclRuleStatementRuleGroupReferenceStatementExcludedRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleActionOverrides: (() { final guardedValue = map['ruleActionOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride>(guardedValue, (value) => WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

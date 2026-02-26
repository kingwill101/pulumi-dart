// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_statement_rule_group_reference_statement_rule_action_override/web_acl_rule_statement_rule_group_reference_statement_rule_action_override.dart';

class WebAclRuleStatementRuleGroupReferenceStatement {
  /// The Amazon Resource Name (ARN) of the <span pulumi-lang-nodejs="`aws.wafv2.RuleGroup`" pulumi-lang-dotnet="`aws.wafv2.RuleGroup`" pulumi-lang-go="`wafv2.RuleGroup`" pulumi-lang-python="`wafv2.RuleGroup`" pulumi-lang-yaml="`aws.wafv2.RuleGroup`" pulumi-lang-java="`aws.wafv2.RuleGroup`">`aws.wafv2.RuleGroup`</span> resource.
  final String arn;

  /// Action settings to use in the place of the rule actions that are configured inside the rule group. You specify one override for each rule whose action you want to change. See <span pulumi-lang-nodejs="`ruleActionOverride`" pulumi-lang-dotnet="`RuleActionOverride`" pulumi-lang-go="`ruleActionOverride`" pulumi-lang-python="`rule_action_override`" pulumi-lang-yaml="`ruleActionOverride`" pulumi-lang-java="`ruleActionOverride`">`rule_action_override`</span> below for details.
  final List<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride>?
      ruleActionOverrides;

  WebAclRuleStatementRuleGroupReferenceStatement({
    required this.arn,
    this.ruleActionOverrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final ruleActionOverridesValue = ruleActionOverrides;
    if (ruleActionOverridesValue != null) {
      map['ruleActionOverrides'] = Input.encodeList<
              WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride,
              Map<String, dynamic>>(
          ruleActionOverridesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclRuleStatementRuleGroupReferenceStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatement(
      arn: map['arn'] as String,
      ruleActionOverrides: map['ruleActionOverrides'] == null
          ? null
          : Input.decodeList<
                  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride>(
              map['ruleActionOverrides'],
              (value) =>
                  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

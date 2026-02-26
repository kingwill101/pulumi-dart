// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use/web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride {
  /// Override action to use, in place of the configured action of the rule in the rule group. See <span pulumi-lang-nodejs="`action`" pulumi-lang-dotnet="`Action`" pulumi-lang-go="`action`" pulumi-lang-python="`action`" pulumi-lang-yaml="`action`" pulumi-lang-java="`action`">`action`</span> for details.
  final WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse
      actionToUse;

  /// Name of the rule to override. See the [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-list.html) for a list of names in the appropriate rule group in use.
  final String name;

  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride({
    required this.actionToUse,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionToUse'] = actionToUse.toMap();
    map['name'] = name;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride(
      actionToUse:
          WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse
              .fromMap((map['actionToUse'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

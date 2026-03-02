// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride {
  /// Override action to use, in place of the configured action of the rule in the rule group. See `action` for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse> actionToUse;
  /// Name of the rule to override. See the [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-list.html) for a list of names in the appropriate rule group in use.
  final pulumi.Input<String> name;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride].
  /// [actionToUse] Override action to use, in place of the configured action of the rule in the rule group. See `action` for details.
  /// [name] Name of the rule to override. See the [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-list.html) for a list of names in the appropriate rule group in use.
  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride({
    required this.actionToUse,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionToUse': pulumi.Input.mapInputValue<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse, Map<String, dynamic>>(actionToUse, (value) => value.toMap()),
      'name': name,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride(
      actionToUse: (WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse.fromMap((map['actionToUse'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}


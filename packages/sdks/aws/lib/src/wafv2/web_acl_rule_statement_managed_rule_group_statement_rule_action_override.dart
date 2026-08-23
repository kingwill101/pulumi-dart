// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride {
  /// Override action to use for the rule. See Action below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse>? actionToUse;
  /// Name of the rule to override.
  final pulumi.Input<String> name;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride].
  /// [actionToUse] Override action to use for the rule. See Action below.
  /// [name] Name of the rule to override.
  const WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride({
    this.actionToUse,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionToUse': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse, Map<String, dynamic>>(actionToUse, (value) => value.toMap()),
      'name': name,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride(
      actionToUse: (() { final guardedValue = map['actionToUse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

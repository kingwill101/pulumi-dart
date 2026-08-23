// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride {
  /// Override action to use for the rule. See Action below.
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse>? actionToUse;
  /// Name of the rule to override.
  final pulumi.Input<String> name;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride].
  /// [actionToUse] Override action to use for the rule. See Action below.
  /// [name] Name of the rule to override.
  const WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride({
    this.actionToUse,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionToUse': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse, Map<String, dynamic>>(actionToUse, (value) => value.toMap()),
      'name': name,
    };
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride(
      actionToUse: (() { final guardedValue = map['actionToUse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

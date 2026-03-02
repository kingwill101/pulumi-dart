// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride {
  /// Override action to use, in place of the configured action of the rule in the rule group. See `action` for details.
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse> actionToUse;
  /// Name of the rule to override. See the [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-list.html) for a list of names in the appropriate rule group in use.
  final pulumi.Input<String> name;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride].
  /// [actionToUse] Override action to use, in place of the configured action of the rule in the rule group. See `action` for details.
  /// [name] Name of the rule to override. See the [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-list.html) for a list of names in the appropriate rule group in use.
  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride({
    required this.actionToUse,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionToUse': pulumi.Input.mapInputValue<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse, Map<String, dynamic>>(actionToUse, (value) => value.toMap()),
      'name': name,
    };
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverride(
      actionToUse: (WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse.fromMap((map['actionToUse']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}


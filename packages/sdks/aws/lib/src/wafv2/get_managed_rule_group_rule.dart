// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action.dart';

class GetManagedRuleGroupRule {
  /// Action taken on a web request when it matches a rule's statement. See `action_to_use` for details.
  final pulumi.Input<List<GetManagedRuleGroupRuleAction>> actions;
  /// Managed rule group name.
  final pulumi.Input<String> name;

  /// Creates a new [GetManagedRuleGroupRule].
  /// [actions] Action taken on a web request when it matches a rule's statement. See `action_to_use` for details.
  /// [name] Managed rule group name.
  GetManagedRuleGroupRule({
    required this.actions,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<GetManagedRuleGroupRuleAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GetManagedRuleGroupRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetManagedRuleGroupRule.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRule(
      actions: (pulumi.Input.decodeList<GetManagedRuleGroupRuleAction>(map['actions'], (value) => GetManagedRuleGroupRuleAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}


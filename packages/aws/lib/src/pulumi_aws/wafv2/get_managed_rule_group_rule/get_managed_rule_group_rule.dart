// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_managed_rule_group_rule_action/get_managed_rule_group_rule_action.dart';

class GetManagedRuleGroupRule {
  /// Action taken on a web request when it matches a rule's statement. See `action_to_use` for details.
  final List<GetManagedRuleGroupRuleAction> actions;

  /// Managed rule group name.
  final String name;

  GetManagedRuleGroupRule({
    required this.actions,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] =
        Input.encodeList<GetManagedRuleGroupRuleAction, Map<String, dynamic>>(
            actions, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory GetManagedRuleGroupRule.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRule(
      actions: Input.decodeList<GetManagedRuleGroupRuleAction>(
          map['actions'],
          (value) => GetManagedRuleGroupRuleAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

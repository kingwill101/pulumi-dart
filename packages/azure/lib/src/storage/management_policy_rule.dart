// ignore_for_file: unused_element, unnecessary_cast

import 'management_policy_rule_actions.dart';
import 'management_policy_rule_filters.dart';

class ManagementPolicyRule {
  /// An `actions` block as documented below.
  final ManagementPolicyRuleActions actions;
  /// Boolean to specify whether the rule is enabled.
  final bool enabled;
  /// A `filters` block as documented below.
  final ManagementPolicyRuleFilters filters;
  /// The name of the rule. Rule name is case-sensitive. It must be unique within a policy.
  final String name;

  /// Creates a new [ManagementPolicyRule].
  /// [actions] An `actions` block as documented below.
  /// [enabled] Boolean to specify whether the rule is enabled.
  /// [filters] A `filters` block as documented below.
  /// [name] The name of the rule. Rule name is case-sensitive. It must be unique within a policy.
  ManagementPolicyRule({
    required this.actions,
    required this.enabled,
    required this.filters,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions.toMap(),
      'enabled': enabled,
      'filters': filters.toMap(),
      'name': name,
    };
  }

  factory ManagementPolicyRule.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRule(
      actions: ManagementPolicyRuleActions.fromMap((map['actions'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] as bool,
      filters: ManagementPolicyRuleFilters.fromMap((map['filters'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}


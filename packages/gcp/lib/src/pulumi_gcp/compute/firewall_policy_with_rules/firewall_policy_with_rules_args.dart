// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../firewall_policy_with_rules_rule/firewall_policy_with_rules_rule.dart';

/// The set of arguments for FirewallPolicyWithRules.
class FirewallPolicyWithRulesArgs {
  /// An optional description of this resource.
  final Input<String>? description;

  /// The parent of this FirewallPolicy in the Cloud Resource Hierarchy.
  /// Format: organizations/{organization_id} or folders/{folder_id}
  final Input<String> parent;

  /// A list of firewall policy rules.
  /// Structure is documented below.
  final Input<List<FirewallPolicyWithRulesRule>> rules;

  /// A textual name of the security policy.
  final Input<String> shortName;

  FirewallPolicyWithRulesArgs({
    this.description,
    required this.parent,
    required this.rules,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['parent'] = parent;
    map['rules'] = Input.mapInputValue<List<FirewallPolicyWithRulesRule>,
            List<Map<String, dynamic>>>(
        rules,
        (value) =>
            Input.encodeList<FirewallPolicyWithRulesRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['shortName'] = shortName;
    return map;
  }

  factory FirewallPolicyWithRulesArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyWithRulesArgs(
      description: Input.asOptionalInput<String>(map['description']),
      parent: Input.asInput<String>(map['parent']),
      rules: Input.asInput<List<FirewallPolicyWithRulesRule>>(map['rules']),
      shortName: Input.asInput<String>(map['shortName']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../deny_policy_rule/deny_policy_rule.dart';

/// The set of arguments for DenyPolicy.
class DenyPolicyArgs {
  /// The display name of the rule.
  final pulumi.Input<String>? displayName;

  /// The name of the policy.
  final pulumi.Input<String>? name;

  /// The attachment point is identified by its URL-encoded full resource name.
  final pulumi.Input<String> parent;

  /// Rules to be applied.
  /// Structure is documented below.
  final pulumi.Input<List<DenyPolicyRule>> rules;

  DenyPolicyArgs({
    this.displayName,
    this.name,
    required this.parent,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parent'] = parent;
    map['rules'] = pulumi.Input.mapInputValue<List<DenyPolicyRule>,
            List<Map<String, dynamic>>>(
        rules,
        (value) =>
            pulumi.Input.encodeList<DenyPolicyRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory DenyPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DenyPolicyArgs(
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      rules: pulumi.Input.asInput<List<DenyPolicyRule>>(map['rules']),
    );
  }
}

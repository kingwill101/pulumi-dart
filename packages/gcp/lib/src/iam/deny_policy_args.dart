// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deny_policy_rule.dart';

/// {@template pulumi_iam_deny_policy_deny_policy_args_doc}
/// The set of arguments for DenyPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_deny_policy_deny_policy_args_doc}
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

  /// Creates a new [DenyPolicyArgs].
  /// [displayName] The display name of the rule.
  /// [name] The name of the policy.
  /// [parent] The attachment point is identified by its URL-encoded full resource name.
  /// [rules] Rules to be applied.
  DenyPolicyArgs({
    String? displayName,
    String? name,
    required String parent,
    required List<DenyPolicyRule> rules,
  })  : displayName = pulumi.Input.asOptionalInput<String>(displayName),
        name = pulumi.Input.asOptionalInput<String>(name),
        parent = pulumi.Input.asInput<String>(parent),
        rules = pulumi.Input.asInput<List<DenyPolicyRule>>(rules);

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
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parent: map['parent'] as String,
      rules: pulumi.Input.decodeList<DenyPolicyRule>(
          map['rules'],
          (value) =>
              DenyPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

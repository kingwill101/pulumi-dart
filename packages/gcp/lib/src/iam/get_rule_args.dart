// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_rule_get_rule_args_doc}
/// Arguments for getRule.
/// {@endtemplate}
/// {@macro pulumi_iam_get_rule_get_rule_args_doc}
class GetRuleArgs {
  /// The name of the Role to lookup in the form `roles/{ROLE_NAME}`, `organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}` or `projects/{PROJECT_ID}/roles/{ROLE_NAME}`
  final pulumi.Input<String> name;

  /// Creates a new [GetRuleArgs].
  /// [name] The name of the Role to lookup in the form `roles/{ROLE_NAME}`, `organizations/{ORGANIZATION_ID}/roles/{ROLE_NAME}` or `projects/{PROJECT_ID}/roles/{ROLE_NAME}`
  GetRuleArgs({
    required String name,
  }) : name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleArgs(
      name: map['name'] as String,
    );
  }
}

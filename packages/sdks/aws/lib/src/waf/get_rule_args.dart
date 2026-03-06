// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_waf_get_rule_get_rule_args_doc}
/// Arguments for getRule.
/// {@endtemplate}
/// {@macro pulumi_waf_get_rule_get_rule_args_doc}
class GetRuleArgs {
  /// Name of the WAF rule.
  final pulumi.Input<String> name;

  /// Creates a new [GetRuleArgs].
  /// [name] Name of the WAF rule.
  const GetRuleArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}


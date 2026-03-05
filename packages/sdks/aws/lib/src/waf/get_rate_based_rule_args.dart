// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_waf_get_rate_based_rule_get_rate_based_rule_args_doc}
/// Arguments for getRateBasedRule.
/// {@endtemplate}
/// {@macro pulumi_waf_get_rate_based_rule_get_rate_based_rule_args_doc}
class GetRateBasedRuleArgs {
  /// Name of the WAF rate based rule.
  final pulumi.Input<String> name;

  /// Creates a new [GetRateBasedRuleArgs].
  /// [name] Name of the WAF rate based rule.
  GetRateBasedRuleArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetRateBasedRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRateBasedRuleArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}


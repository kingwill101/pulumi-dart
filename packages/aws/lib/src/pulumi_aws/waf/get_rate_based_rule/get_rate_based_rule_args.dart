// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRateBasedRule.
class GetRateBasedRuleArgs {
  /// Name of the WAF rate based rule.
  final pulumi.Input<String> name;

  GetRateBasedRuleArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetRateBasedRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRateBasedRuleArgs(
      name: pulumi.Input.asInput<String>(map['name']),
    );
  }
}

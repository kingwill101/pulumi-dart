// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleActionMonetize {
  /// Integer multiplier applied to the base price defined in the rule group's `monetizationConfig` when charging for a matching request. Expressed as a string. Valid values are `1` to `100` (for example, `"5"`).
  final pulumi.Input<String?>? priceMultiplier;

  /// Creates a new [RuleGroupRuleActionMonetize].
  /// [priceMultiplier] Integer multiplier applied to the base price defined in the rule group's `monetizationConfig` when charging for a matching request. Expressed as a string. Valid values are `1` to `100` (for example, `"5"`).
  const RuleGroupRuleActionMonetize({
    this.priceMultiplier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priceMultiplier': ?priceMultiplier,
    };
  }

  factory RuleGroupRuleActionMonetize.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionMonetize(
      priceMultiplier: (() { final guardedValue = map['priceMultiplier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafRuleConfigRateLimitCharacteristicsCriteriaCriteriaCriteria {
  final pulumi.Input<String>? matchType;

  /// Creates a new [WafRuleConfigRateLimitCharacteristicsCriteriaCriteriaCriteria].
  /// [matchType] Optional.
  WafRuleConfigRateLimitCharacteristicsCriteriaCriteriaCriteria({
    this.matchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchType': ?matchType,
    };
  }

  factory WafRuleConfigRateLimitCharacteristicsCriteriaCriteriaCriteria.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigRateLimitCharacteristicsCriteriaCriteriaCriteria(
      matchType: (() { final guardedValue = map['matchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


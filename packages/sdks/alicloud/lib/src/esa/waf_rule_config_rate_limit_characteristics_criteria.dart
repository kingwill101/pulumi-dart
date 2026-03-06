// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_rate_limit_characteristics_criteria_criteria.dart';

class WafRuleConfigRateLimitCharacteristicsCriteria {
  final pulumi.Input<List<WafRuleConfigRateLimitCharacteristicsCriteriaCriteria>>? criterias;
  final pulumi.Input<String>? logic;
  final pulumi.Input<String>? matchType;

  /// Creates a new [WafRuleConfigRateLimitCharacteristicsCriteria].
  /// [criterias] Optional.
  /// [logic] Optional.
  /// [matchType] Optional.
  const WafRuleConfigRateLimitCharacteristicsCriteria({
    this.criterias,
    this.logic,
    this.matchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criterias': ?pulumi.Input.mapOptionalInputValue<List<WafRuleConfigRateLimitCharacteristicsCriteriaCriteria>, List<Map<String, dynamic>>>(criterias, (value) => pulumi.Input.encodeList<WafRuleConfigRateLimitCharacteristicsCriteriaCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logic': ?logic,
      'matchType': ?matchType,
    };
  }

  factory WafRuleConfigRateLimitCharacteristicsCriteria.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigRateLimitCharacteristicsCriteria(
      criterias: (() { final guardedValue = map['criterias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafRuleConfigRateLimitCharacteristicsCriteriaCriteria>(guardedValue, (value) => WafRuleConfigRateLimitCharacteristicsCriteriaCriteria.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logic: (() { final guardedValue = map['logic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchType: (() { final guardedValue = map['matchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


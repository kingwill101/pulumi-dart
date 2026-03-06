// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_rate_limit_characteristics_criteria_criteria_criteria.dart';

class WafRuleConfigRateLimitCharacteristicsCriteriaCriteria {
  final pulumi.Input<List<WafRuleConfigRateLimitCharacteristicsCriteriaCriteriaCriteria>>? criterias;
  final pulumi.Input<String>? logic;
  final pulumi.Input<String>? matchType;

  /// Creates a new [WafRuleConfigRateLimitCharacteristicsCriteriaCriteria].
  /// [criterias] Optional.
  /// [logic] Optional.
  /// [matchType] Optional.
  const WafRuleConfigRateLimitCharacteristicsCriteriaCriteria({
    this.criterias,
    this.logic,
    this.matchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criterias': ?pulumi.Input.mapOptionalInputValue<List<WafRuleConfigRateLimitCharacteristicsCriteriaCriteriaCriteria>, List<Map<String, dynamic>>>(criterias, (value) => pulumi.Input.encodeList<WafRuleConfigRateLimitCharacteristicsCriteriaCriteriaCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logic': ?logic,
      'matchType': ?matchType,
    };
  }

  factory WafRuleConfigRateLimitCharacteristicsCriteriaCriteria.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigRateLimitCharacteristicsCriteriaCriteria(
      criterias: (() { final guardedValue = map['criterias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafRuleConfigRateLimitCharacteristicsCriteriaCriteriaCriteria>(guardedValue, (value) => WafRuleConfigRateLimitCharacteristicsCriteriaCriteriaCriteria.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logic: (() { final guardedValue = map['logic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchType: (() { final guardedValue = map['matchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


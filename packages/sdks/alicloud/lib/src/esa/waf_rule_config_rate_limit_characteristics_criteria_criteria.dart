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
  WafRuleConfigRateLimitCharacteristicsCriteriaCriteria({
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
      criterias: map['criterias'] == null ? null : (pulumi.Input.decodeList<WafRuleConfigRateLimitCharacteristicsCriteriaCriteriaCriteria>(map['criterias']!, (value) => WafRuleConfigRateLimitCharacteristicsCriteriaCriteriaCriteria.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logic: map['logic'] == null ? null : (map['logic']! as String).input(),
      matchType: map['matchType'] == null ? null : (map['matchType']! as String).input(),
    );
  }
}


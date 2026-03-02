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
  WafRuleConfigRateLimitCharacteristicsCriteria({
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
      criterias: map['criterias'] == null ? null : (pulumi.Input.decodeList<WafRuleConfigRateLimitCharacteristicsCriteriaCriteria>(map['criterias']!, (value) => WafRuleConfigRateLimitCharacteristicsCriteriaCriteria.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logic: map['logic'] == null ? null : (map['logic']! as String).input(),
      matchType: map['matchType'] == null ? null : (map['matchType']! as String).input(),
    );
  }
}


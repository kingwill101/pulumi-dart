// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_rate_limit_characteristics_criteria.dart';

class WafRuleConfigRateLimitCharacteristics {
  final List<WafRuleConfigRateLimitCharacteristicsCriteria>? criterias;
  final String? logic;

  /// Creates a new [WafRuleConfigRateLimitCharacteristics].
  /// [criterias] Optional.
  /// [logic] Optional.
  WafRuleConfigRateLimitCharacteristics({
    this.criterias,
    this.logic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criterias': ?criterias == null ? null : pulumi.Input.encodeList<WafRuleConfigRateLimitCharacteristicsCriteria, Map<String, dynamic>>(criterias!, (value) => value.toMap()),
      'logic': ?logic,
    };
  }

  factory WafRuleConfigRateLimitCharacteristics.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigRateLimitCharacteristics(
      criterias: map['criterias'] == null ? null : pulumi.Input.decodeList<WafRuleConfigRateLimitCharacteristicsCriteria>(map['criterias'], (value) => WafRuleConfigRateLimitCharacteristicsCriteria.fromMap((value as Map).cast<String, dynamic>())),
      logic: map['logic'] == null ? null : map['logic'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_rate_limit_characteristics_criteria.dart';

class WafRuleConfigRateLimitCharacteristics {
  final pulumi.Input<List<WafRuleConfigRateLimitCharacteristicsCriteria>>? criterias;
  final pulumi.Input<String>? logic;

  /// Creates a new [WafRuleConfigRateLimitCharacteristics].
  /// [criterias] Optional.
  /// [logic] Optional.
  const WafRuleConfigRateLimitCharacteristics({
    this.criterias,
    this.logic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criterias': ?pulumi.Input.mapOptionalInputValue<List<WafRuleConfigRateLimitCharacteristicsCriteria>, List<Map<String, dynamic>>>(criterias, (value) => pulumi.Input.encodeList<WafRuleConfigRateLimitCharacteristicsCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logic': ?logic,
    };
  }

  factory WafRuleConfigRateLimitCharacteristics.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigRateLimitCharacteristics(
      criterias: (() { final guardedValue = map['criterias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafRuleConfigRateLimitCharacteristicsCriteria>(guardedValue, (value) => WafRuleConfigRateLimitCharacteristicsCriteria.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logic: (() { final guardedValue = map['logic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


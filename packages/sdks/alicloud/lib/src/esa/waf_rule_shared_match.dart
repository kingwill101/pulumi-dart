// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_shared_match_criteria.dart';

class WafRuleSharedMatch {
  final pulumi.Input<List<WafRuleSharedMatchCriteria>>? criterias;
  final pulumi.Input<String>? logic;
  final pulumi.Input<String>? matchType;

  /// Creates a new [WafRuleSharedMatch].
  /// [criterias] Optional.
  /// [logic] Optional.
  /// [matchType] Optional.
  const WafRuleSharedMatch({
    this.criterias,
    this.logic,
    this.matchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criterias': ?pulumi.Input.mapOptionalInputValue<List<WafRuleSharedMatchCriteria>, List<Map<String, dynamic>>>(criterias, (value) => pulumi.Input.encodeList<WafRuleSharedMatchCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logic': ?logic,
      'matchType': ?matchType,
    };
  }

  factory WafRuleSharedMatch.fromMap(Map<String, dynamic> map) {
    return WafRuleSharedMatch(
      criterias: (() { final guardedValue = map['criterias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafRuleSharedMatchCriteria>(guardedValue, (value) => WafRuleSharedMatchCriteria.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logic: (() { final guardedValue = map['logic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchType: (() { final guardedValue = map['matchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


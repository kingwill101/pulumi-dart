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
  WafRuleSharedMatch({
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
      criterias: map['criterias'] == null ? null : (pulumi.Input.decodeList<WafRuleSharedMatchCriteria>(map['criterias']!, (value) => WafRuleSharedMatchCriteria.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logic: map['logic'] == null ? null : (map['logic']! as String).input(),
      matchType: map['matchType'] == null ? null : (map['matchType']! as String).input(),
    );
  }
}


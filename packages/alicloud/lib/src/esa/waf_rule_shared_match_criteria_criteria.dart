// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_shared_match_criteria_criteria_criteria.dart';

class WafRuleSharedMatchCriteriaCriteria {
  final List<WafRuleSharedMatchCriteriaCriteriaCriteria>? criterias;
  final String? logic;
  final String? matchType;

  /// Creates a new [WafRuleSharedMatchCriteriaCriteria].
  /// [criterias] Optional.
  /// [logic] Optional.
  /// [matchType] Optional.
  WafRuleSharedMatchCriteriaCriteria({
    this.criterias,
    this.logic,
    this.matchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criterias': ?criterias == null ? null : pulumi.Input.encodeList<WafRuleSharedMatchCriteriaCriteriaCriteria, Map<String, dynamic>>(criterias!, (value) => value.toMap()),
      'logic': ?logic,
      'matchType': ?matchType,
    };
  }

  factory WafRuleSharedMatchCriteriaCriteria.fromMap(Map<String, dynamic> map) {
    return WafRuleSharedMatchCriteriaCriteria(
      criterias: map['criterias'] == null ? null : pulumi.Input.decodeList<WafRuleSharedMatchCriteriaCriteriaCriteria>(map['criterias'], (value) => WafRuleSharedMatchCriteriaCriteriaCriteria.fromMap((value as Map).cast<String, dynamic>())),
      logic: map['logic'] == null ? null : map['logic'] as String,
      matchType: map['matchType'] == null ? null : map['matchType'] as String,
    );
  }
}


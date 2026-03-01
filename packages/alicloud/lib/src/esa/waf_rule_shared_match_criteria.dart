// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_shared_match_criteria_criteria.dart';

class WafRuleSharedMatchCriteria {
  final List<WafRuleSharedMatchCriteriaCriteria>? criterias;
  final String? logic;
  final String? matchType;

  /// Creates a new [WafRuleSharedMatchCriteria].
  /// [criterias] Optional.
  /// [logic] Optional.
  /// [matchType] Optional.
  WafRuleSharedMatchCriteria({
    this.criterias,
    this.logic,
    this.matchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criterias': ?criterias == null ? null : pulumi.Input.encodeList<WafRuleSharedMatchCriteriaCriteria, Map<String, dynamic>>(criterias!, (value) => value.toMap()),
      'logic': ?logic,
      'matchType': ?matchType,
    };
  }

  factory WafRuleSharedMatchCriteria.fromMap(Map<String, dynamic> map) {
    return WafRuleSharedMatchCriteria(
      criterias: map['criterias'] == null ? null : pulumi.Input.decodeList<WafRuleSharedMatchCriteriaCriteria>(map['criterias'], (value) => WafRuleSharedMatchCriteriaCriteria.fromMap((value as Map).cast<String, dynamic>())),
      logic: map['logic'] == null ? null : map['logic'] as String,
      matchType: map['matchType'] == null ? null : map['matchType'] as String,
    );
  }
}


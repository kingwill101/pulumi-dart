// ignore_for_file: unused_element, unnecessary_cast


class WafRuleSharedMatchCriteriaCriteriaCriteria {
  final String? matchType;

  /// Creates a new [WafRuleSharedMatchCriteriaCriteriaCriteria].
  /// [matchType] Optional.
  WafRuleSharedMatchCriteriaCriteriaCriteria({
    this.matchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchType': ?matchType,
    };
  }

  factory WafRuleSharedMatchCriteriaCriteriaCriteria.fromMap(Map<String, dynamic> map) {
    return WafRuleSharedMatchCriteriaCriteriaCriteria(
      matchType: map['matchType'] == null ? null : map['matchType'] as String,
    );
  }
}


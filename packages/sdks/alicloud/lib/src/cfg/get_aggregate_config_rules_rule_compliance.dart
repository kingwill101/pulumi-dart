// ignore_for_file: unused_element, unnecessary_cast


class GetAggregateConfigRulesRuleCompliance {
  /// The Compliance Type.
  final String complianceType;
  /// The Count.
  final int count;

  /// Creates a new [GetAggregateConfigRulesRuleCompliance].
  /// [complianceType] The Compliance Type.
  /// [count] The Count.
  GetAggregateConfigRulesRuleCompliance({
    required this.complianceType,
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceType': complianceType,
      'count': count,
    };
  }

  factory GetAggregateConfigRulesRuleCompliance.fromMap(Map<String, dynamic> map) {
    return GetAggregateConfigRulesRuleCompliance(
      complianceType: map['complianceType'] as String,
      count: map['count'] as int,
    );
  }
}


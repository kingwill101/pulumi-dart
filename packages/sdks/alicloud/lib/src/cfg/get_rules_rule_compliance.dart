// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleCompliance {
  /// The compliance evaluation result of the target resources.
  final String complianceType;
  /// The number of resources with the specified compliance evaluation result.
  final int count;

  /// Creates a new [GetRulesRuleCompliance].
  /// [complianceType] The compliance evaluation result of the target resources.
  /// [count] The number of resources with the specified compliance evaluation result.
  GetRulesRuleCompliance({
    required this.complianceType,
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceType': complianceType,
      'count': count,
    };
  }

  factory GetRulesRuleCompliance.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleCompliance(
      complianceType: map['complianceType'] as String,
      count: map['count'] as int,
    );
  }
}


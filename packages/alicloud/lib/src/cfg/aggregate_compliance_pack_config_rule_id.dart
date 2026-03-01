// ignore_for_file: unused_element, unnecessary_cast


class AggregateCompliancePackConfigRuleId {
  /// The rule ID of Aggregate Config Rule.
  final String? configRuleId;

  /// Creates a new [AggregateCompliancePackConfigRuleId].
  /// [configRuleId] The rule ID of Aggregate Config Rule.
  AggregateCompliancePackConfigRuleId({
    this.configRuleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleId': ?configRuleId,
    };
  }

  factory AggregateCompliancePackConfigRuleId.fromMap(Map<String, dynamic> map) {
    return AggregateCompliancePackConfigRuleId(
      configRuleId: map['configRuleId'] == null ? null : map['configRuleId'] as String,
    );
  }
}


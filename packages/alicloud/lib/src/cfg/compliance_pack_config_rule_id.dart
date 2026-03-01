// ignore_for_file: unused_element, unnecessary_cast


class CompliancePackConfigRuleId {
  /// The rule ID of Config Rule.
  final String? configRuleId;

  /// Creates a new [CompliancePackConfigRuleId].
  /// [configRuleId] The rule ID of Config Rule.
  CompliancePackConfigRuleId({
    this.configRuleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleId': ?configRuleId,
    };
  }

  factory CompliancePackConfigRuleId.fromMap(Map<String, dynamic> map) {
    return CompliancePackConfigRuleId(
      configRuleId: map['configRuleId'] == null ? null : map['configRuleId'] as String,
    );
  }
}


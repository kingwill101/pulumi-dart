// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleCriteriaRelatedFindingsId {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaRelatedFindingsId].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaRelatedFindingsId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaRelatedFindingsId.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaRelatedFindingsId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}


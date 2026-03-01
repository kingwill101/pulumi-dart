// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleCriteriaGeneratorId {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaGeneratorId].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaGeneratorId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaGeneratorId.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaGeneratorId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}


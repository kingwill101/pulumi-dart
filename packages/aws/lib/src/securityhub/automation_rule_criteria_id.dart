// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleCriteriaId {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaId].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaId.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}


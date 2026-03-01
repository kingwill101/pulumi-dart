// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaNoteText {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaNoteText].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaNoteText({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory AutomationRuleCriteriaNoteText.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaNoteText(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

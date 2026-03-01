// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaNoteUpdatedBy {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaNoteUpdatedBy].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaNoteUpdatedBy({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory AutomationRuleCriteriaNoteUpdatedBy.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutomationRuleCriteriaNoteUpdatedBy(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

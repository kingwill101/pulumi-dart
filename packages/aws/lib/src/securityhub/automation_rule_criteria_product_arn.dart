// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaProductArn {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaProductArn].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaProductArn({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory AutomationRuleCriteriaProductArn.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaProductArn(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

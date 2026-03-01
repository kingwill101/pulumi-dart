// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleCriteriaResourceRegion {
  final String comparison;
  final String value;

  /// Creates a new [AutomationRuleCriteriaResourceRegion].
  /// [comparison] Required.
  /// [value] Required.
  AutomationRuleCriteriaResourceRegion({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory AutomationRuleCriteriaResourceRegion.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaResourceRegion(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class GetPrometheusAlertRulesRuleLabel {
  /// The name of the label.
  final String name;
  /// The value of the label.
  final String value;

  /// Creates a new [GetPrometheusAlertRulesRuleLabel].
  /// [name] The name of the label.
  /// [value] The value of the label.
  GetPrometheusAlertRulesRuleLabel({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetPrometheusAlertRulesRuleLabel.fromMap(Map<String, dynamic> map) {
    return GetPrometheusAlertRulesRuleLabel(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}


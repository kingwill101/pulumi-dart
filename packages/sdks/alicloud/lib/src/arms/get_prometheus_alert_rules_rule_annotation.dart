// ignore_for_file: unused_element, unnecessary_cast


class GetPrometheusAlertRulesRuleAnnotation {
  /// The value of the annotation.
  final String name;
  /// The name of the annotation name.
  final String value;

  /// Creates a new [GetPrometheusAlertRulesRuleAnnotation].
  /// [name] The value of the annotation.
  /// [value] The name of the annotation name.
  GetPrometheusAlertRulesRuleAnnotation({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetPrometheusAlertRulesRuleAnnotation.fromMap(Map<String, dynamic> map) {
    return GetPrometheusAlertRulesRuleAnnotation(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}


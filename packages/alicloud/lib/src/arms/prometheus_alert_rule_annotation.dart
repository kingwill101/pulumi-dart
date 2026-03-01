// ignore_for_file: unused_element, unnecessary_cast


class PrometheusAlertRuleAnnotation {
  /// The name of the annotation.
  final String? name;
  /// The value of the annotation.
  final String? value;

  /// Creates a new [PrometheusAlertRuleAnnotation].
  /// [name] The name of the annotation.
  /// [value] The value of the annotation.
  PrometheusAlertRuleAnnotation({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory PrometheusAlertRuleAnnotation.fromMap(Map<String, dynamic> map) {
    return PrometheusAlertRuleAnnotation(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class GetServiceMetricAlarmRulesRulePrometheusAnnotation {
  /// The subject of the alert notificaThe key of the annotation.
  final String key;
  /// The value of the annotation.
  final String value;

  /// Creates a new [GetServiceMetricAlarmRulesRulePrometheusAnnotation].
  /// [key] The subject of the alert notificaThe key of the annotation.
  /// [value] The value of the annotation.
  GetServiceMetricAlarmRulesRulePrometheusAnnotation({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetServiceMetricAlarmRulesRulePrometheusAnnotation.fromMap(Map<String, dynamic> map) {
    return GetServiceMetricAlarmRulesRulePrometheusAnnotation(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}


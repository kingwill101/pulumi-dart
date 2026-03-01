// ignore_for_file: unused_element, unnecessary_cast


class GetServiceMetricAlarmRulesRuleLabel {
  /// The subject of the alert notificaThe key of the annotation.
  final String key;
  /// The value of the annotation.
  final String value;

  /// Creates a new [GetServiceMetricAlarmRulesRuleLabel].
  /// [key] The subject of the alert notificaThe key of the annotation.
  /// [value] The value of the annotation.
  GetServiceMetricAlarmRulesRuleLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetServiceMetricAlarmRulesRuleLabel.fromMap(Map<String, dynamic> map) {
    return GetServiceMetricAlarmRulesRuleLabel(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}


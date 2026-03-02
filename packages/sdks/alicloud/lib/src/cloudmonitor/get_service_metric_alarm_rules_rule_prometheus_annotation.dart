// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMetricAlarmRulesRulePrometheusAnnotation {
  /// The subject of the alert notificaThe key of the annotation.
  final pulumi.Input<String> key;
  /// The value of the annotation.
  final pulumi.Input<String> value;

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
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}


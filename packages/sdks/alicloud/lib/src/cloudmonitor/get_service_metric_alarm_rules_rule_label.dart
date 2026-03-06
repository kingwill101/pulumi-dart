// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMetricAlarmRulesRuleLabel {
  /// The subject of the alert notificaThe key of the annotation.
  final pulumi.Input<String> key;
  /// The value of the annotation.
  final pulumi.Input<String> value;

  /// Creates a new [GetServiceMetricAlarmRulesRuleLabel].
  /// [key] The subject of the alert notificaThe key of the annotation.
  /// [value] The value of the annotation.
  const GetServiceMetricAlarmRulesRuleLabel({
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
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}


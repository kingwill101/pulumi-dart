// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrometheusAlertRulesRuleLabel {
  /// The name of the label.
  final pulumi.Input<String> name;
  /// The value of the label.
  final pulumi.Input<String> value;

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
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}


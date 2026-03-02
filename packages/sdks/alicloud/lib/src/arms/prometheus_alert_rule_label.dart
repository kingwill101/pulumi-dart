// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrometheusAlertRuleLabel {
  /// The name of the label.
  final pulumi.Input<String>? name;
  /// The value of the label.
  final pulumi.Input<String>? value;

  /// Creates a new [PrometheusAlertRuleLabel].
  /// [name] The name of the label.
  /// [value] The value of the label.
  PrometheusAlertRuleLabel({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory PrometheusAlertRuleLabel.fromMap(Map<String, dynamic> map) {
    return PrometheusAlertRuleLabel(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}


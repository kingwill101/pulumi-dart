// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrometheusAlertRuleAnnotation {
  /// The name of the annotation.
  final pulumi.Input<String>? name;

  /// The value of the annotation.
  final pulumi.Input<String>? value;

  /// Creates a new [PrometheusAlertRuleAnnotation].
  /// [name] The name of the annotation.
  /// [value] The value of the annotation.
  PrometheusAlertRuleAnnotation({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory PrometheusAlertRuleAnnotation.fromMap(Map<String, dynamic> map) {
    return PrometheusAlertRuleAnnotation(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

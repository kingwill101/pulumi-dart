// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrometheusAlertRulesRuleAnnotation {
  /// The value of the annotation.
  final pulumi.Input<String> name;
  /// The name of the annotation name.
  final pulumi.Input<String> value;

  /// Creates a new [GetPrometheusAlertRulesRuleAnnotation].
  /// [name] The value of the annotation.
  /// [value] The name of the annotation name.
  const GetPrometheusAlertRulesRuleAnnotation({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}


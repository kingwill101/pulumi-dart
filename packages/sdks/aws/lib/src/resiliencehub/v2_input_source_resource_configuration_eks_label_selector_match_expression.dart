// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2InputSourceResourceConfigurationEksLabelSelectorMatchExpression {
  /// Label key that the requirement applies to.
  final pulumi.Input<String> key;
  /// Relationship between the label key and values. Valid values are `IN`, `NOT_IN`, `EXISTS`, and `DOES_NOT_EXIST`.
  final pulumi.Input<String> operator;
  /// Label values to compare against, up to 20. Required with `IN` and `NOT_IN`, and must be omitted with `EXISTS` and `DOES_NOT_EXIST`.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [V2InputSourceResourceConfigurationEksLabelSelectorMatchExpression].
  /// [key] Label key that the requirement applies to.
  /// [operator] Relationship between the label key and values. Valid values are `IN`, `NOT_IN`, `EXISTS`, and `DOES_NOT_EXIST`.
  /// [values] Label values to compare against, up to 20. Required with `IN` and `NOT_IN`, and must be omitted with `EXISTS` and `DOES_NOT_EXIST`.
  const V2InputSourceResourceConfigurationEksLabelSelectorMatchExpression({
    required this.key,
    required this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': operator,
      'values': ?values,
    };
  }

  factory V2InputSourceResourceConfigurationEksLabelSelectorMatchExpression.fromMap(Map<String, dynamic> map) {
    return V2InputSourceResourceConfigurationEksLabelSelectorMatchExpression(
      key: pulumi.Input.fromValue(map['key'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

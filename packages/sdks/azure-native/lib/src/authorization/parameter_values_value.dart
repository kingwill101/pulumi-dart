// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The value of a parameter.
class ParameterValuesValue {
  /// The value of the parameter.
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ParameterValuesValue].
  /// [value] The value of the parameter.
  ParameterValuesValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ParameterValuesValue.fromMap(Map<String, dynamic> map) {
    return ParameterValuesValue(
      value: map['value'] == null ? null : (map['value']!).input(),
    );
  }
}


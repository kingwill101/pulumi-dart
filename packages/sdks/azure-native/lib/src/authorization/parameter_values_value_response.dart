// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The value of a parameter.
class ParameterValuesValueResponse {
  /// The value of the parameter.
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ParameterValuesValueResponse].
  /// [value] The value of the parameter.
  ParameterValuesValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ParameterValuesValueResponse.fromMap(Map<String, dynamic> map) {
    return ParameterValuesValueResponse(
      value: map['value'] == null ? null : (map['value']).input(),
    );
  }
}


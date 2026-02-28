// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_control_parameter_spec_sub_parameter_default_value_oneof_value_parameter_value.dart';

class CloudControlParameterSpecSubParameterDefaultValueOneofValue {
  /// The name of the parameter.
  final String? name;
  /// The value of the parameter.
  /// Structure is documented below.
  final CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValue? parameterValue;

  /// Creates a new [CloudControlParameterSpecSubParameterDefaultValueOneofValue].
  /// [name] The name of the parameter.
  /// [parameterValue] The value of the parameter.
  CloudControlParameterSpecSubParameterDefaultValueOneofValue({
    this.name,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameterValue': ?parameterValue == null ? null : parameterValue!.toMap(),
    };
  }

  factory CloudControlParameterSpecSubParameterDefaultValueOneofValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterDefaultValueOneofValue(
      name: map['name'] == null ? null : map['name'] as String,
      parameterValue: map['parameterValue'] == null ? null : CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValue.fromMap((map['parameterValue'] as Map).cast<String, dynamic>()),
    );
  }
}


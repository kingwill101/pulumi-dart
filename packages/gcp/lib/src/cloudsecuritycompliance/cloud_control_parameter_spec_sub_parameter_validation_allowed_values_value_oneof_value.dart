// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_control_parameter_spec_sub_parameter_validation_allowed_values_value_oneof_value_parameter_value.dart';

class CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValue {
  /// The name of the parameter.
  final String? name;

  /// The value of the parameter.
  /// Structure is documented below.
  final CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValue?
  parameterValue;

  /// Creates a new [CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValue].
  /// [name] The name of the parameter.
  /// [parameterValue] The value of the parameter.
  CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValue({
    this.name,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameterValue': ?parameterValue == null
          ? null
          : parameterValue!.toMap(),
    };
  }

  factory CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValue(
      name: map['name'] == null ? null : map['name'] as String,
      parameterValue: map['parameterValue'] == null
          ? null
          : CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValue.fromMap(
              (map['parameterValue'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

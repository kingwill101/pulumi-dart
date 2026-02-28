// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_control_parameter_spec_validation_allowed_values_value_oneof_value_parameter_value.dart';

class CloudControlParameterSpecValidationAllowedValuesValueOneofValue {
  /// The name of the parameter.
  final String? name;

  /// The value of the parameter.
  /// Structure is documented below.
  final CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValue?
      parameterValue;

  /// Creates a new [CloudControlParameterSpecValidationAllowedValuesValueOneofValue].
  /// [name] The name of the parameter.
  /// [parameterValue] The value of the parameter.
  CloudControlParameterSpecValidationAllowedValuesValueOneofValue({
    this.name,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parameterValueValue = parameterValue;
    if (parameterValueValue != null) {
      map['parameterValue'] = parameterValueValue.toMap();
    }
    return map;
  }

  factory CloudControlParameterSpecValidationAllowedValuesValueOneofValue.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecValidationAllowedValuesValueOneofValue(
      name: map['name'] == null ? null : map['name'] as String,
      parameterValue: map['parameterValue'] == null
          ? null
          : CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValue
              .fromMap((map['parameterValue'] as Map).cast<String, dynamic>()),
    );
  }
}

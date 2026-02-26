// ignore_for_file: unused_element, unnecessary_cast

import '../cloud_control_parameter_spec_sub_parameter_default_value_oneof_value_parameter_value/cloud_control_parameter_spec_sub_parameter_default_value_oneof_value_parameter_value.dart';

class CloudControlParameterSpecSubParameterDefaultValueOneofValue {
  /// The name of the parameter.
  final String? name;

  /// The value of the parameter.
  /// Structure is documented below.
  final CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValue?
      parameterValue;

  CloudControlParameterSpecSubParameterDefaultValueOneofValue({
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

  factory CloudControlParameterSpecSubParameterDefaultValueOneofValue.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterDefaultValueOneofValue(
      name: map['name'] == null ? null : map['name'] as String,
      parameterValue: map['parameterValue'] == null
          ? null
          : CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValue
              .fromMap((map['parameterValue'] as Map).cast<String, dynamic>()),
    );
  }
}

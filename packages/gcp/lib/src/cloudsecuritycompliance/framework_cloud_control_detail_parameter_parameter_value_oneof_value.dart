// ignore_for_file: unused_element, unnecessary_cast

import 'framework_cloud_control_detail_parameter_parameter_value_oneof_value_parameter_value.dart';

class FrameworkCloudControlDetailParameterParameterValueOneofValue {
  /// The name of the parameter.
  final String? name;

  /// The value of the parameter.
  /// Structure is documented below.
  final FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue?
      parameterValue;

  /// Creates a new [FrameworkCloudControlDetailParameterParameterValueOneofValue].
  /// [name] The name of the parameter.
  /// [parameterValue] The value of the parameter.
  FrameworkCloudControlDetailParameterParameterValueOneofValue({
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

  factory FrameworkCloudControlDetailParameterParameterValueOneofValue.fromMap(
      Map<String, dynamic> map) {
    return FrameworkCloudControlDetailParameterParameterValueOneofValue(
      name: map['name'] == null ? null : map['name'] as String,
      parameterValue: map['parameterValue'] == null
          ? null
          : FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue
              .fromMap((map['parameterValue'] as Map).cast<String, dynamic>()),
    );
  }
}

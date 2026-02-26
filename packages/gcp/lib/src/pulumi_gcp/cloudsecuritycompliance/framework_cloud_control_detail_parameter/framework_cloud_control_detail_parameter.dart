// ignore_for_file: unused_element, unnecessary_cast

import '../framework_cloud_control_detail_parameter_parameter_value/framework_cloud_control_detail_parameter_parameter_value.dart';

class FrameworkCloudControlDetailParameter {
  /// The name of the parameter.
  final String name;

  /// Possible parameter value types.
  /// Structure is documented below.
  final FrameworkCloudControlDetailParameterParameterValue parameterValue;

  FrameworkCloudControlDetailParameter({
    required this.name,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['parameterValue'] = parameterValue.toMap();
    return map;
  }

  factory FrameworkCloudControlDetailParameter.fromMap(
      Map<String, dynamic> map) {
    return FrameworkCloudControlDetailParameter(
      name: map['name'] as String,
      parameterValue:
          FrameworkCloudControlDetailParameterParameterValue.fromMap(
              (map['parameterValue'] as Map).cast<String, dynamic>()),
    );
  }
}

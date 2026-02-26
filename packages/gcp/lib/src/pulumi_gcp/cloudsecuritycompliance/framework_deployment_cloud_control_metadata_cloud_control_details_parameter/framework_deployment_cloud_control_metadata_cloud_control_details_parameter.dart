// ignore_for_file: unused_element, unnecessary_cast

import '../framework_deployment_cloud_control_metadata_cloud_control_details_parameter_parameter_value/framework_deployment_cloud_control_metadata_cloud_control_details_parameter_parameter_value.dart';

class FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter {
  /// The name of the parameter.
  final String name;

  /// Possible parameter value types.
  /// Structure is documented below.
  final FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValue
      parameterValue;

  FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter({
    required this.name,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['parameterValue'] = parameterValue.toMap();
    return map;
  }

  factory FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter.fromMap(
      Map<String, dynamic> map) {
    return FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter(
      name: map['name'] as String,
      parameterValue:
          FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValue
              .fromMap((map['parameterValue'] as Map).cast<String, dynamic>()),
    );
  }
}

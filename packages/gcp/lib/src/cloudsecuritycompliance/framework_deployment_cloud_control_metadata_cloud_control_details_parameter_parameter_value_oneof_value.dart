// ignore_for_file: unused_element, unnecessary_cast

import 'framework_deployment_cloud_control_metadata_cloud_control_details_parameter_parameter_value_oneof_value_parameter_value.dart';

class FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValue {
  /// The name of the parameter.
  final String? name;

  /// The value of the parameter.
  /// Structure is documented below.
  final FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValue?
  parameterValue;

  /// Creates a new [FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValue].
  /// [name] The name of the parameter.
  /// [parameterValue] The value of the parameter.
  FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValue({
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

  factory FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValue(
      name: map['name'] == null ? null : map['name'] as String,
      parameterValue: map['parameterValue'] == null
          ? null
          : FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValue.fromMap(
              (map['parameterValue'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

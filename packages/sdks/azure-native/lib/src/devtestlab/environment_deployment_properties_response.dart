// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_template_parameter_properties_response.dart';

/// Properties of an environment deployment.
class EnvironmentDeploymentPropertiesResponse {
  /// The Azure Resource Manager template's identifier.
  final String? armTemplateId;
  /// The parameters of the Azure Resource Manager template.
  final List<ArmTemplateParameterPropertiesResponse>? parameters;

  /// Creates a new [EnvironmentDeploymentPropertiesResponse].
  /// [armTemplateId] The Azure Resource Manager template's identifier.
  /// [parameters] The parameters of the Azure Resource Manager template.
  EnvironmentDeploymentPropertiesResponse({
    this.armTemplateId,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'armTemplateId': ?armTemplateId,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<ArmTemplateParameterPropertiesResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
    };
  }

  factory EnvironmentDeploymentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentDeploymentPropertiesResponse(
      armTemplateId: map['armTemplateId'] == null ? null : map['armTemplateId'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<ArmTemplateParameterPropertiesResponse>(map['parameters'], (value) => ArmTemplateParameterPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


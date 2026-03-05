// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_template_parameter_properties_response.dart';

/// Properties of an environment deployment.
class EnvironmentDeploymentPropertiesResponse {
  /// The Azure Resource Manager template's identifier.
  final pulumi.Input<String>? armTemplateId;
  /// The parameters of the Azure Resource Manager template.
  final pulumi.Input<List<ArmTemplateParameterPropertiesResponse>>? parameters;

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
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ArmTemplateParameterPropertiesResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ArmTemplateParameterPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnvironmentDeploymentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentDeploymentPropertiesResponse(
      armTemplateId: (() { final guardedValue = map['armTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArmTemplateParameterPropertiesResponse>(guardedValue, (value) => ArmTemplateParameterPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


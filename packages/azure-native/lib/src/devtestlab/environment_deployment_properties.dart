// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_template_parameter_properties.dart';

/// Properties of an environment deployment.
class EnvironmentDeploymentProperties {
  /// The Azure Resource Manager template's identifier.
  final String? armTemplateId;
  /// The parameters of the Azure Resource Manager template.
  final List<ArmTemplateParameterProperties>? parameters;

  /// Creates a new [EnvironmentDeploymentProperties].
  /// [armTemplateId] The Azure Resource Manager template's identifier.
  /// [parameters] The parameters of the Azure Resource Manager template.
  EnvironmentDeploymentProperties({
    this.armTemplateId,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'armTemplateId': ?armTemplateId,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<ArmTemplateParameterProperties, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
    };
  }

  factory EnvironmentDeploymentProperties.fromMap(Map<String, dynamic> map) {
    return EnvironmentDeploymentProperties(
      armTemplateId: map['armTemplateId'] == null ? null : map['armTemplateId'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<ArmTemplateParameterProperties>(map['parameters'], (value) => ArmTemplateParameterProperties.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


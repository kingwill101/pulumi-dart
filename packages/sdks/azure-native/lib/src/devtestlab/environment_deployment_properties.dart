// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_template_parameter_properties.dart';

/// Properties of an environment deployment.
class EnvironmentDeploymentProperties {
  /// The Azure Resource Manager template's identifier.
  final pulumi.Input<String>? armTemplateId;
  /// The parameters of the Azure Resource Manager template.
  final pulumi.Input<List<ArmTemplateParameterProperties>>? parameters;

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
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ArmTemplateParameterProperties>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ArmTemplateParameterProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnvironmentDeploymentProperties.fromMap(Map<String, dynamic> map) {
    return EnvironmentDeploymentProperties(
      armTemplateId: (() { final guardedValue = map['armTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArmTemplateParameterProperties>(guardedValue, (value) => ArmTemplateParameterProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


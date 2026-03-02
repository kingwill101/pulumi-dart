// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter.dart';

class ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter {
  /// An object that specifies parameter values for a control in a configuration policy. See below.
  final pulumi.Input<List<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter>> parameters;
  /// The ID of the security control. For more information see the [Security Hub controls reference] documentation.
  final pulumi.Input<String> securityControlId;

  /// Creates a new [ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter].
  /// [parameters] An object that specifies parameter values for a control in a configuration policy. See below.
  /// [securityControlId] The ID of the security control. For more information see the [Security Hub controls reference] documentation.
  ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter({
    required this.parameters,
    required this.securityControlId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': pulumi.Input.mapInputValue<List<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityControlId': securityControlId,
    };
  }

  factory ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter.fromMap(Map<String, dynamic> map) {
    return ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter(
      parameters: (pulumi.Input.decodeList<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter>(map['parameters'], (value) => ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityControlId: (map['securityControlId'] as String).input(),
    );
  }
}


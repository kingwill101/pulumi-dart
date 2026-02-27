// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter/configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter_parameter.dart';

class ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter {
  /// An object that specifies parameter values for a control in a configuration policy. See below.
  final List<
          ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter>
      parameters;

  /// The ID of the security control. For more information see the [Security Hub controls reference] documentation.
  final String securityControlId;

  ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter({
    required this.parameters,
    required this.securityControlId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameters'] = pulumi.Input.encodeList<
        ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    map['securityControlId'] = securityControlId;
    return map;
  }

  factory ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter(
      parameters: pulumi.Input.decodeList<
              ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter>(
          map['parameters'],
          (value) =>
              ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameterParameter
                  .fromMap((value as Map).cast<String, dynamic>())),
      securityControlId: map['securityControlId'] as String,
    );
  }
}

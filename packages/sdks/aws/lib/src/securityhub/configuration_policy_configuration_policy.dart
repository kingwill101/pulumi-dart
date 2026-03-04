// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_policy_configuration_policy_security_controls_configuration.dart';

class ConfigurationPolicyConfigurationPolicy {
  /// A list that defines which security standards are enabled in the configuration policy. It must be defined if `service_enabled` is set to true.
  final pulumi.Input<List<String>>? enabledStandardArns;

  /// Defines which security controls are enabled in the configuration policy and any customizations to parameters affecting them. See below.
  final pulumi.Input<
    ConfigurationPolicyConfigurationPolicySecurityControlsConfiguration
  >?
  securityControlsConfiguration;

  /// Indicates whether Security Hub is enabled in the policy.
  final pulumi.Input<bool> serviceEnabled;

  /// Creates a new [ConfigurationPolicyConfigurationPolicy].
  /// [enabledStandardArns] A list that defines which security standards are enabled in the configuration policy. It must be defined if `service_enabled` is set to true.
  /// [securityControlsConfiguration] Defines which security controls are enabled in the configuration policy and any customizations to parameters affecting them. See below.
  /// [serviceEnabled] Indicates whether Security Hub is enabled in the policy.
  ConfigurationPolicyConfigurationPolicy({
    this.enabledStandardArns,
    this.securityControlsConfiguration,
    required this.serviceEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledStandardArns': ?enabledStandardArns,
      'securityControlsConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigurationPolicyConfigurationPolicySecurityControlsConfiguration,
            Map<String, dynamic>
          >(securityControlsConfiguration, (value) => value.toMap()),
      'serviceEnabled': serviceEnabled,
    };
  }

  factory ConfigurationPolicyConfigurationPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigurationPolicyConfigurationPolicy(
      enabledStandardArns: (() {
        final guardedValue = map['enabledStandardArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      securityControlsConfiguration: (() {
        final guardedValue = map['securityControlsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigurationPolicyConfigurationPolicySecurityControlsConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceEnabled: pulumi.Input.fromValue(map['serviceEnabled'] as bool),
    );
  }
}

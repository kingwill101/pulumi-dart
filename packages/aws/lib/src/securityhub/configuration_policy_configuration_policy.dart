// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_policy_configuration_policy_security_controls_configuration.dart';

class ConfigurationPolicyConfigurationPolicy {
  /// A list that defines which security standards are enabled in the configuration policy. It must be defined if `service_enabled` is set to true.
  final List<String>? enabledStandardArns;

  /// Defines which security controls are enabled in the configuration policy and any customizations to parameters affecting them. See below.
  final ConfigurationPolicyConfigurationPolicySecurityControlsConfiguration?
      securityControlsConfiguration;

  /// Indicates whether Security Hub is enabled in the policy.
  final bool serviceEnabled;

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
    final map = <String, dynamic>{};
    final enabledStandardArnsValue = enabledStandardArns;
    if (enabledStandardArnsValue != null) {
      map['enabledStandardArns'] = enabledStandardArnsValue;
    }
    final securityControlsConfigurationValue = securityControlsConfiguration;
    if (securityControlsConfigurationValue != null) {
      map['securityControlsConfiguration'] =
          securityControlsConfigurationValue.toMap();
    }
    map['serviceEnabled'] = serviceEnabled;
    return map;
  }

  factory ConfigurationPolicyConfigurationPolicy.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationPolicyConfigurationPolicy(
      enabledStandardArns: map['enabledStandardArns'] == null
          ? null
          : (map['enabledStandardArns'] as List).cast<String>(),
      securityControlsConfiguration: map['securityControlsConfiguration'] ==
              null
          ? null
          : ConfigurationPolicyConfigurationPolicySecurityControlsConfiguration
              .fromMap((map['securityControlsConfiguration'] as Map)
                  .cast<String, dynamic>()),
      serviceEnabled: map['serviceEnabled'] as bool,
    );
  }
}

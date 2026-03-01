// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_policy_configuration_policy_security_controls_configuration_security_control_custom_parameter.dart';

class ConfigurationPolicyConfigurationPolicySecurityControlsConfiguration {
  /// A list of security controls that are disabled in the configuration policy Security Hub enables all other controls (including newly released controls) other than the listed controls. Conflicts with `enabled_control_identifiers`.
  final List<String>? disabledControlIdentifiers;
  /// A list of security controls that are enabled in the configuration policy. Security Hub disables all other controls (including newly released controls) other than the listed controls. Conflicts with `disabled_control_identifiers`.
  final List<String>? enabledControlIdentifiers;
  /// A list of control parameter customizations that are included in a configuration policy. Include multiple blocks to define multiple control custom parameters. See below.
  final List<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter>? securityControlCustomParameters;

  /// Creates a new [ConfigurationPolicyConfigurationPolicySecurityControlsConfiguration].
  /// [disabledControlIdentifiers] A list of security controls that are disabled in the configuration policy Security Hub enables all other controls (including newly released controls) other than the listed controls. Conflicts with `enabled_control_identifiers`.
  /// [enabledControlIdentifiers] A list of security controls that are enabled in the configuration policy. Security Hub disables all other controls (including newly released controls) other than the listed controls. Conflicts with `disabled_control_identifiers`.
  /// [securityControlCustomParameters] A list of control parameter customizations that are included in a configuration policy. Include multiple blocks to define multiple control custom parameters. See below.
  ConfigurationPolicyConfigurationPolicySecurityControlsConfiguration({
    this.disabledControlIdentifiers,
    this.enabledControlIdentifiers,
    this.securityControlCustomParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledControlIdentifiers': ?disabledControlIdentifiers,
      'enabledControlIdentifiers': ?enabledControlIdentifiers,
      'securityControlCustomParameters': ?securityControlCustomParameters == null ? null : pulumi.Input.encodeList<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter, Map<String, dynamic>>(securityControlCustomParameters!, (value) => value.toMap()),
    };
  }

  factory ConfigurationPolicyConfigurationPolicySecurityControlsConfiguration.fromMap(Map<String, dynamic> map) {
    return ConfigurationPolicyConfigurationPolicySecurityControlsConfiguration(
      disabledControlIdentifiers: map['disabledControlIdentifiers'] == null ? null : (map['disabledControlIdentifiers'] as List).cast<String>(),
      enabledControlIdentifiers: map['enabledControlIdentifiers'] == null ? null : (map['enabledControlIdentifiers'] as List).cast<String>(),
      securityControlCustomParameters: map['securityControlCustomParameters'] == null ? null : pulumi.Input.decodeList<ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter>(map['securityControlCustomParameters'], (value) => ConfigurationPolicyConfigurationPolicySecurityControlsConfigurationSecurityControlCustomParameter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


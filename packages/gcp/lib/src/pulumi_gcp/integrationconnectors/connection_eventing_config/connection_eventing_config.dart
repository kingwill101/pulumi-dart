// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connection_eventing_config_additional_variable/connection_eventing_config_additional_variable.dart';
import '../connection_eventing_config_auth_config/connection_eventing_config_auth_config.dart';
import '../connection_eventing_config_registration_destination_config/connection_eventing_config_registration_destination_config.dart';

class ConnectionEventingConfig {
  /// List containing additional auth configs.
  /// Structure is documented below.
  final List<ConnectionEventingConfigAdditionalVariable>? additionalVariables;

  /// authConfig for Eventing Configuration.
  /// Structure is documented below.
  final ConnectionEventingConfigAuthConfig? authConfig;

  /// Enrichment Enabled.
  final bool? enrichmentEnabled;

  /// registrationDestinationConfig
  /// Structure is documented below.
  final ConnectionEventingConfigRegistrationDestinationConfig
      registrationDestinationConfig;

  ConnectionEventingConfig({
    this.additionalVariables,
    this.authConfig,
    this.enrichmentEnabled,
    required this.registrationDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalVariablesValue = additionalVariables;
    if (additionalVariablesValue != null) {
      map['additionalVariables'] = Input.encodeList<
              ConnectionEventingConfigAdditionalVariable, Map<String, dynamic>>(
          additionalVariablesValue, (value) => value.toMap());
    }
    final authConfigValue = authConfig;
    if (authConfigValue != null) {
      map['authConfig'] = authConfigValue.toMap();
    }
    final enrichmentEnabledValue = enrichmentEnabled;
    if (enrichmentEnabledValue != null) {
      map['enrichmentEnabled'] = enrichmentEnabledValue;
    }
    map['registrationDestinationConfig'] =
        registrationDestinationConfig.toMap();
    return map;
  }

  factory ConnectionEventingConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfig(
      additionalVariables: map['additionalVariables'] == null
          ? null
          : Input.decodeList<ConnectionEventingConfigAdditionalVariable>(
              map['additionalVariables'],
              (value) => ConnectionEventingConfigAdditionalVariable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      authConfig: map['authConfig'] == null
          ? null
          : ConnectionEventingConfigAuthConfig.fromMap(
              (map['authConfig'] as Map).cast<String, dynamic>()),
      enrichmentEnabled: map['enrichmentEnabled'] == null
          ? null
          : map['enrichmentEnabled'] as bool,
      registrationDestinationConfig:
          ConnectionEventingConfigRegistrationDestinationConfig.fromMap(
              (map['registrationDestinationConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}

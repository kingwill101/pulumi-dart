// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../config_mfa_provider_config/config_mfa_provider_config.dart';

class ConfigMfa {
  /// A list of usable second factors for this project.
  /// Each value may be one of: `PHONE_SMS`.
  final List<String>? enabledProviders;

  /// A list of usable second factors for this project along with their configurations.
  /// This field does not support phone based MFA, for that use the 'enabledProviders' field.
  /// Structure is documented below.
  final List<ConfigMfaProviderConfig>? providerConfigs;

  /// Whether MultiFactor Authentication has been enabled for this project.
  /// Possible values are: `DISABLED`, `ENABLED`, `MANDATORY`.
  final String? state;

  ConfigMfa({
    this.enabledProviders,
    this.providerConfigs,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledProvidersValue = enabledProviders;
    if (enabledProvidersValue != null) {
      map['enabledProviders'] = enabledProvidersValue;
    }
    final providerConfigsValue = providerConfigs;
    if (providerConfigsValue != null) {
      map['providerConfigs'] =
          Input.encodeList<ConfigMfaProviderConfig, Map<String, dynamic>>(
              providerConfigsValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory ConfigMfa.fromMap(Map<String, dynamic> map) {
    return ConfigMfa(
      enabledProviders: map['enabledProviders'] == null
          ? null
          : (map['enabledProviders'] as List).cast<String>(),
      providerConfigs: map['providerConfigs'] == null
          ? null
          : Input.decodeList<ConfigMfaProviderConfig>(
              map['providerConfigs'],
              (value) => ConfigMfaProviderConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

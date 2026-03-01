// ignore_for_file: unused_element, unnecessary_cast

import 'addons_config_addons_config_advanced_api_ops_config.dart';
import 'addons_config_addons_config_api_security_config.dart';
import 'addons_config_addons_config_connectors_platform_config.dart';
import 'addons_config_addons_config_integration_config.dart';
import 'addons_config_addons_config_monetization_config.dart';

class AddonsConfigAddonsConfig {
  /// Configuration for the Advanced API Ops add-on.
  /// Structure is documented below.
  final AddonsConfigAddonsConfigAdvancedApiOpsConfig? advancedApiOpsConfig;

  /// Configuration for the API Security add-on.
  /// Structure is documented below.
  final AddonsConfigAddonsConfigApiSecurityConfig? apiSecurityConfig;

  /// Configuration for the Monetization add-on.
  /// Structure is documented below.
  final AddonsConfigAddonsConfigConnectorsPlatformConfig?
  connectorsPlatformConfig;

  /// Configuration for the Integration add-on.
  /// Structure is documented below.
  final AddonsConfigAddonsConfigIntegrationConfig? integrationConfig;

  /// Configuration for the Monetization add-on.
  /// Structure is documented below.
  final AddonsConfigAddonsConfigMonetizationConfig? monetizationConfig;

  /// Creates a new [AddonsConfigAddonsConfig].
  /// [advancedApiOpsConfig] Configuration for the Advanced API Ops add-on.
  /// [apiSecurityConfig] Configuration for the API Security add-on.
  /// [connectorsPlatformConfig] Configuration for the Monetization add-on.
  /// [integrationConfig] Configuration for the Integration add-on.
  /// [monetizationConfig] Configuration for the Monetization add-on.
  AddonsConfigAddonsConfig({
    this.advancedApiOpsConfig,
    this.apiSecurityConfig,
    this.connectorsPlatformConfig,
    this.integrationConfig,
    this.monetizationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedApiOpsConfig': ?advancedApiOpsConfig == null
          ? null
          : advancedApiOpsConfig!.toMap(),
      'apiSecurityConfig': ?apiSecurityConfig == null
          ? null
          : apiSecurityConfig!.toMap(),
      'connectorsPlatformConfig': ?connectorsPlatformConfig == null
          ? null
          : connectorsPlatformConfig!.toMap(),
      'integrationConfig': ?integrationConfig == null
          ? null
          : integrationConfig!.toMap(),
      'monetizationConfig': ?monetizationConfig == null
          ? null
          : monetizationConfig!.toMap(),
    };
  }

  factory AddonsConfigAddonsConfig.fromMap(Map<String, dynamic> map) {
    return AddonsConfigAddonsConfig(
      advancedApiOpsConfig: map['advancedApiOpsConfig'] == null
          ? null
          : AddonsConfigAddonsConfigAdvancedApiOpsConfig.fromMap(
              (map['advancedApiOpsConfig'] as Map).cast<String, dynamic>(),
            ),
      apiSecurityConfig: map['apiSecurityConfig'] == null
          ? null
          : AddonsConfigAddonsConfigApiSecurityConfig.fromMap(
              (map['apiSecurityConfig'] as Map).cast<String, dynamic>(),
            ),
      connectorsPlatformConfig: map['connectorsPlatformConfig'] == null
          ? null
          : AddonsConfigAddonsConfigConnectorsPlatformConfig.fromMap(
              (map['connectorsPlatformConfig'] as Map).cast<String, dynamic>(),
            ),
      integrationConfig: map['integrationConfig'] == null
          ? null
          : AddonsConfigAddonsConfigIntegrationConfig.fromMap(
              (map['integrationConfig'] as Map).cast<String, dynamic>(),
            ),
      monetizationConfig: map['monetizationConfig'] == null
          ? null
          : AddonsConfigAddonsConfigMonetizationConfig.fromMap(
              (map['monetizationConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties_response.dart';

/// The properties of a Azure Health Bot. The Health Bot Service is a cloud platform that empowers developers in Healthcare organizations to build and deploy their compliant, AI-powered virtual health assistants and health bots, that help them improve processes and reduce costs.
class HealthBotPropertiesResponse {
  /// The link.
  final String botManagementPortalLink;
  /// KeyVault properties for the resource encryption.
  final KeyVaultPropertiesResponse? keyVaultProperties;
  /// The provisioning state of the Azure Health Bot resource.
  final String provisioningState;

  /// Creates a new [HealthBotPropertiesResponse].
  /// [botManagementPortalLink] The link.
  /// [keyVaultProperties] KeyVault properties for the resource encryption.
  /// [provisioningState] The provisioning state of the Azure Health Bot resource.
  HealthBotPropertiesResponse({
    required this.botManagementPortalLink,
    this.keyVaultProperties,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botManagementPortalLink': botManagementPortalLink,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory HealthBotPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HealthBotPropertiesResponse(
      botManagementPortalLink: map['botManagementPortalLink'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}


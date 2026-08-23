// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties_response.dart';

/// The properties of a Azure Health Bot. The Health Bot Service is a cloud platform that empowers developers in Healthcare organizations to build and deploy their compliant, AI-powered virtual health assistants and health bots, that help them improve processes and reduce costs.
class HealthBotPropertiesResponse {
  /// The link.
  final pulumi.Input<String> botManagementPortalLink;
  /// KeyVault properties for the resource encryption.
  final pulumi.Input<KeyVaultPropertiesResponse>? keyVaultProperties;
  /// The provisioning state of the Azure Health Bot resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [HealthBotPropertiesResponse].
  /// [botManagementPortalLink] The link.
  /// [keyVaultProperties] KeyVault properties for the resource encryption.
  /// [provisioningState] The provisioning state of the Azure Health Bot resource.
  const HealthBotPropertiesResponse({
    required this.botManagementPortalLink,
    this.keyVaultProperties,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botManagementPortalLink': botManagementPortalLink,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory HealthBotPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HealthBotPropertiesResponse(
      botManagementPortalLink: pulumi.Input.fromValue(map['botManagementPortalLink'] as String),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

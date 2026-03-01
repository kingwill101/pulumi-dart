// ignore_for_file: unused_element, unnecessary_cast

import 'registry_endpoint_trusted_signing_key_config_map_response.dart';

/// RegistryEndpointTrustedSettings properties
class RegistryEndpointTrustedSettingsResponse {
  /// The trust properties for the registry endpoint.
  final RegistryEndpointTrustedSigningKeyConfigMapResponse trustedSigningKeys;

  /// Creates a new [RegistryEndpointTrustedSettingsResponse].
  /// [trustedSigningKeys] The trust properties for the registry endpoint.
  RegistryEndpointTrustedSettingsResponse({
    required this.trustedSigningKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustedSigningKeys': trustedSigningKeys.toMap(),
    };
  }

  factory RegistryEndpointTrustedSettingsResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointTrustedSettingsResponse(
      trustedSigningKeys: RegistryEndpointTrustedSigningKeyConfigMapResponse.fromMap((map['trustedSigningKeys'] as Map).cast<String, dynamic>()),
    );
  }
}


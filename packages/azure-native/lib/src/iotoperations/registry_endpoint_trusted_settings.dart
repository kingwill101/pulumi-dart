// ignore_for_file: unused_element, unnecessary_cast

import 'registry_endpoint_trusted_signing_key_config_map.dart';

/// RegistryEndpointTrustedSettings properties
class RegistryEndpointTrustedSettings {
  /// The trust properties for the registry endpoint.
  final RegistryEndpointTrustedSigningKeyConfigMap trustedSigningKeys;

  /// Creates a new [RegistryEndpointTrustedSettings].
  /// [trustedSigningKeys] The trust properties for the registry endpoint.
  RegistryEndpointTrustedSettings({
    required this.trustedSigningKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustedSigningKeys': trustedSigningKeys.toMap(),
    };
  }

  factory RegistryEndpointTrustedSettings.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointTrustedSettings(
      trustedSigningKeys: RegistryEndpointTrustedSigningKeyConfigMap.fromMap((map['trustedSigningKeys'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_endpoint_trusted_signing_key_config_map_response.dart';

/// RegistryEndpointTrustedSettings properties
class RegistryEndpointTrustedSettingsResponse {
  /// The trust properties for the registry endpoint.
  final pulumi.Input<RegistryEndpointTrustedSigningKeyConfigMapResponse> trustedSigningKeys;

  /// Creates a new [RegistryEndpointTrustedSettingsResponse].
  /// [trustedSigningKeys] The trust properties for the registry endpoint.
  const RegistryEndpointTrustedSettingsResponse({
    required this.trustedSigningKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustedSigningKeys': pulumi.Input.mapInputValue<RegistryEndpointTrustedSigningKeyConfigMapResponse, Map<String, dynamic>>(trustedSigningKeys, (value) => value.toMap()),
    };
  }

  factory RegistryEndpointTrustedSettingsResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointTrustedSettingsResponse(
      trustedSigningKeys: pulumi.Input.fromValue(RegistryEndpointTrustedSigningKeyConfigMapResponse.fromMap((map['trustedSigningKeys']! as Map).cast<String, dynamic>())),
    );
  }
}

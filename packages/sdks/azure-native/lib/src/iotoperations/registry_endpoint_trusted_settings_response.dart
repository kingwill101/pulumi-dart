// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RegistryEndpointTrustedSettings properties
class RegistryEndpointTrustedSettingsResponse {
  /// The trust properties for the registry endpoint.
  final pulumi.Input<dynamic> trustedSigningKeys;

  /// Creates a new [RegistryEndpointTrustedSettingsResponse].
  /// [trustedSigningKeys] The trust properties for the registry endpoint.
  const RegistryEndpointTrustedSettingsResponse({
    required this.trustedSigningKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustedSigningKeys': trustedSigningKeys,
    };
  }

  factory RegistryEndpointTrustedSettingsResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointTrustedSettingsResponse(
      trustedSigningKeys: pulumi.Input.fromValue(map['trustedSigningKeys']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RegistryEndpointTrustedSettings properties
class RegistryEndpointTrustedSettings {
  /// The trust properties for the registry endpoint.
  final pulumi.Input<dynamic> trustedSigningKeys;

  /// Creates a new [RegistryEndpointTrustedSettings].
  /// [trustedSigningKeys] The trust properties for the registry endpoint.
  const RegistryEndpointTrustedSettings({
    required this.trustedSigningKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustedSigningKeys': trustedSigningKeys,
    };
  }

  factory RegistryEndpointTrustedSettings.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointTrustedSettings(
      trustedSigningKeys: pulumi.Input.fromValue(map['trustedSigningKeys']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_endpoint_trusted_signing_key_config_map.dart';

/// RegistryEndpointTrustedSettings properties
class RegistryEndpointTrustedSettings {
  /// The trust properties for the registry endpoint.
  final pulumi.Input<RegistryEndpointTrustedSigningKeyConfigMap> trustedSigningKeys;

  /// Creates a new [RegistryEndpointTrustedSettings].
  /// [trustedSigningKeys] The trust properties for the registry endpoint.
  RegistryEndpointTrustedSettings({
    required this.trustedSigningKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustedSigningKeys': pulumi.Input.mapInputValue<RegistryEndpointTrustedSigningKeyConfigMap, Map<String, dynamic>>(trustedSigningKeys, (value) => value.toMap()),
    };
  }

  factory RegistryEndpointTrustedSettings.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointTrustedSettings(
      trustedSigningKeys: (RegistryEndpointTrustedSigningKeyConfigMap.fromMap((map['trustedSigningKeys'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


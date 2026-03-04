// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for RegistryEndpoint trust provided through a secret.
class RegistryEndpointTrustedSigningKeySecretResponse {
  /// The name of the secret.
  final pulumi.Input<String> secretRef;

  /// RegistryEndpointTrustedSigningKeyType values
  /// Expected value is 'Secret'.
  final pulumi.Input<String> type;

  /// Creates a new [RegistryEndpointTrustedSigningKeySecretResponse].
  /// [secretRef] The name of the secret.
  /// [type] RegistryEndpointTrustedSigningKeyType values
  RegistryEndpointTrustedSigningKeySecretResponse({
    required this.secretRef,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretRef': secretRef, 'type': type};
  }

  factory RegistryEndpointTrustedSigningKeySecretResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegistryEndpointTrustedSigningKeySecretResponse(
      secretRef: pulumi.Input.fromValue(map['secretRef'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

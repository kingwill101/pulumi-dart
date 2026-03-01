// ignore_for_file: unused_element, unnecessary_cast


/// Settings for RegistryEndpoint trust provided through a secret.
class RegistryEndpointTrustedSigningKeySecretResponse {
  /// The name of the secret.
  final String secretRef;
  /// RegistryEndpointTrustedSigningKeyType values
  /// Expected value is 'Secret'.
  final String type;

  /// Creates a new [RegistryEndpointTrustedSigningKeySecretResponse].
  /// [secretRef] The name of the secret.
  /// [type] RegistryEndpointTrustedSigningKeyType values
  RegistryEndpointTrustedSigningKeySecretResponse({
    required this.secretRef,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
      'type': type,
    };
  }

  factory RegistryEndpointTrustedSigningKeySecretResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointTrustedSigningKeySecretResponse(
      secretRef: map['secretRef'] as String,
      type: map['type'] as String,
    );
  }
}


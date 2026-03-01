// ignore_for_file: unused_element, unnecessary_cast


/// Settings for RegistryEndpoint trust provided through a configmap.
class RegistryEndpointTrustedSigningKeyConfigMap {
  /// The name of the configmap.
  final String configMapRef;
  /// RegistryEndpointTrustedSigningKeyType values
  /// Expected value is 'ConfigMap'.
  final String type;

  /// Creates a new [RegistryEndpointTrustedSigningKeyConfigMap].
  /// [configMapRef] The name of the configmap.
  /// [type] RegistryEndpointTrustedSigningKeyType values
  RegistryEndpointTrustedSigningKeyConfigMap({
    required this.configMapRef,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapRef': configMapRef,
      'type': type,
    };
  }

  factory RegistryEndpointTrustedSigningKeyConfigMap.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointTrustedSigningKeyConfigMap(
      configMapRef: map['configMapRef'] as String,
      type: map['type'] as String,
    );
  }
}


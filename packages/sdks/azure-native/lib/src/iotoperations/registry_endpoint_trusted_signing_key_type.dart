/// The trust type for the registry endpoint.
enum RegistryEndpointTrustedSigningKeyType {
  secret("Secret"),
  configMap("ConfigMap");

  const RegistryEndpointTrustedSigningKeyType(this.wireValue);
  final String wireValue;

  static RegistryEndpointTrustedSigningKeyType fromValue(String value) {
    for (final item in RegistryEndpointTrustedSigningKeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistryEndpointTrustedSigningKeyType value: $value');
  }
}


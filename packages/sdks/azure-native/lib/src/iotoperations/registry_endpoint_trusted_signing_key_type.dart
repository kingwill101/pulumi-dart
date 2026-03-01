/// The trust type for the registry endpoint.
enum RegistryEndpointTrustedSigningKeyType {
  secret("Secret"),
  configMap("ConfigMap");

  const RegistryEndpointTrustedSigningKeyType(this.value);
  final String value;

  static RegistryEndpointTrustedSigningKeyType fromValue(String value) {
    for (final item in RegistryEndpointTrustedSigningKeyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistryEndpointTrustedSigningKeyType value: $value');
  }
}


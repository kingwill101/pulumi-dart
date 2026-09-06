import 'package:pulumi/pulumi.dart' as pulumi;

/// The trust type for the registry endpoint.
enum RegistryEndpointTrustedSigningKeyType implements pulumi.PulumiEnum<String> {
  secret("Secret"),
  configMap("ConfigMap");

  const RegistryEndpointTrustedSigningKeyType(this.wireValue);
  @override
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

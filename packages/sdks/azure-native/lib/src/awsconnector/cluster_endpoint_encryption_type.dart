import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ClusterEndpointEncryptionType implements pulumi.PulumiEnum<String> {
  nONE("NONE"),
  tLS("TLS");

  const ClusterEndpointEncryptionType(this.wireValue);
  @override
  final String wireValue;

  static ClusterEndpointEncryptionType fromValue(String value) {
    for (final item in ClusterEndpointEncryptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterEndpointEncryptionType value: $value');
  }
}

/// Property value
enum ClusterEndpointEncryptionType {
  nONE("NONE"),
  tLS("TLS");

  const ClusterEndpointEncryptionType(this.value);
  final String value;

  static ClusterEndpointEncryptionType fromValue(String value) {
    for (final item in ClusterEndpointEncryptionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterEndpointEncryptionType value: $value');
  }
}


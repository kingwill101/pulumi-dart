/// Property value
enum ClusterEndpointEncryptionType {
  nONE("NONE"),
  tLS("TLS");

  const ClusterEndpointEncryptionType(this.wireValue);
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


/// The protocol to use for the metastore service endpoint. If unspecified, defaults to THRIFT.
enum HiveMetastoreConfigEndpointProtocolMetastoreV1alpha {
  endpointProtocolUnspecified("ENDPOINT_PROTOCOL_UNSPECIFIED"),
  thrift("THRIFT"),
  grpc("GRPC");

  const HiveMetastoreConfigEndpointProtocolMetastoreV1alpha(this.value);
  final String value;

  static HiveMetastoreConfigEndpointProtocolMetastoreV1alpha fromValue(
      String value) {
    for (final item
        in HiveMetastoreConfigEndpointProtocolMetastoreV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown HiveMetastoreConfigEndpointProtocolMetastoreV1alpha value: $value');
  }
}

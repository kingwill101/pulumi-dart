/// The protocol to use for the metastore service endpoint. If unspecified, defaults to THRIFT.
enum HiveMetastoreConfigEndpointProtocol {
  endpointProtocolUnspecified("ENDPOINT_PROTOCOL_UNSPECIFIED"),
  thrift("THRIFT"),
  grpc("GRPC");

  const HiveMetastoreConfigEndpointProtocol(this.value);
  final String value;

  static HiveMetastoreConfigEndpointProtocol fromValue(String value) {
    for (final item in HiveMetastoreConfigEndpointProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown HiveMetastoreConfigEndpointProtocol value: $value');
  }
}

/// The protocol to use for the metastore service endpoint. If unspecified, defaults to THRIFT.
enum HiveMetastoreConfigEndpointProtocol3 {
  endpointProtocolUnspecified("ENDPOINT_PROTOCOL_UNSPECIFIED"),
  thrift("THRIFT"),
  grpc("GRPC");

  const HiveMetastoreConfigEndpointProtocol3(this.value);
  final String value;

  static HiveMetastoreConfigEndpointProtocol3 fromValue(String value) {
    for (final item in HiveMetastoreConfigEndpointProtocol3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown HiveMetastoreConfigEndpointProtocol3 value: $value');
  }
}

/// The network connect mode of the Filestore instance. If not provided, the connect mode defaults to DIRECT_PEERING.
enum NetworkConfigConnectMode2 {
  connectModeUnspecified("CONNECT_MODE_UNSPECIFIED"),
  directPeering("DIRECT_PEERING"),
  privateServiceAccess("PRIVATE_SERVICE_ACCESS");

  const NetworkConfigConnectMode2(this.value);
  final String value;

  static NetworkConfigConnectMode2 fromValue(String value) {
    for (final item in NetworkConfigConnectMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigConnectMode2 value: $value');
  }
}

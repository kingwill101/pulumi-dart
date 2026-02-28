/// The network connect mode of the Filestore instance. If not provided, the connect mode defaults to DIRECT_PEERING.
enum NetworkConfigConnectMode {
  connectModeUnspecified("CONNECT_MODE_UNSPECIFIED"),
  directPeering("DIRECT_PEERING"),
  privateServiceAccess("PRIVATE_SERVICE_ACCESS");

  const NetworkConfigConnectMode(this.value);
  final String value;

  static NetworkConfigConnectMode fromValue(String value) {
    for (final item in NetworkConfigConnectMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigConnectMode value: $value');
  }
}


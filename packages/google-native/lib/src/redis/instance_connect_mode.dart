/// Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
enum InstanceConnectMode {
  connectModeUnspecified("CONNECT_MODE_UNSPECIFIED"),
  directPeering("DIRECT_PEERING"),
  privateServiceAccess("PRIVATE_SERVICE_ACCESS");

  const InstanceConnectMode(this.value);
  final String value;

  static InstanceConnectMode fromValue(String value) {
    for (final item in InstanceConnectMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceConnectMode value: $value');
  }
}


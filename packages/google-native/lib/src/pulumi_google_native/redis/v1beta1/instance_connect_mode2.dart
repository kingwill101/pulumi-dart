/// Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
enum InstanceConnectMode2 {
  connectModeUnspecified("CONNECT_MODE_UNSPECIFIED"),
  directPeering("DIRECT_PEERING"),
  privateServiceAccess("PRIVATE_SERVICE_ACCESS");

  const InstanceConnectMode2(this.value);
  final String value;

  static InstanceConnectMode2 fromValue(String value) {
    for (final item in InstanceConnectMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceConnectMode2 value: $value');
  }
}

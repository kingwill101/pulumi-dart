/// Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
enum InstanceConnectModeRedisV1beta1 {
  connectModeUnspecified("CONNECT_MODE_UNSPECIFIED"),
  directPeering("DIRECT_PEERING"),
  privateServiceAccess("PRIVATE_SERVICE_ACCESS");

  const InstanceConnectModeRedisV1beta1(this.value);
  final String value;

  static InstanceConnectModeRedisV1beta1 fromValue(String value) {
    for (final item in InstanceConnectModeRedisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceConnectModeRedisV1beta1 value: $value',
    );
  }
}

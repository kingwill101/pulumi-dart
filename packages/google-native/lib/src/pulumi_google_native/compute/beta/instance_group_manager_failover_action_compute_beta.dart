/// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
enum InstanceGroupManagerFailoverActionComputeBeta {
  noFailover("NO_FAILOVER"),
  unknown("UNKNOWN");

  const InstanceGroupManagerFailoverActionComputeBeta(this.value);
  final String value;

  static InstanceGroupManagerFailoverActionComputeBeta fromValue(String value) {
    for (final item in InstanceGroupManagerFailoverActionComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupManagerFailoverActionComputeBeta value: $value');
  }
}

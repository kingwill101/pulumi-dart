/// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
enum InstanceGroupManagerFailoverAction2 {
  noFailover("NO_FAILOVER"),
  unknown("UNKNOWN");

  const InstanceGroupManagerFailoverAction2(this.value);
  final String value;

  static InstanceGroupManagerFailoverAction2 fromValue(String value) {
    for (final item in InstanceGroupManagerFailoverAction2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupManagerFailoverAction2 value: $value');
  }
}

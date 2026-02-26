/// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
enum RegionInstanceGroupManagerFailoverAction2 {
  noFailover("NO_FAILOVER"),
  unknown("UNKNOWN");

  const RegionInstanceGroupManagerFailoverAction2(this.value);
  final String value;

  static RegionInstanceGroupManagerFailoverAction2 fromValue(String value) {
    for (final item in RegionInstanceGroupManagerFailoverAction2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionInstanceGroupManagerFailoverAction2 value: $value');
  }
}

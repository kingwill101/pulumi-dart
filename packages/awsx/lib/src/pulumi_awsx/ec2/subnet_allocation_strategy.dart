/// Strategy for calculating subnet ranges from the subnet specifications.
enum SubnetAllocationStrategy {
  valueLegacy("Legacy"),
  valueAuto("Auto"),
  valueExact("Exact");

  const SubnetAllocationStrategy(this.value);
  final String value;

  static SubnetAllocationStrategy fromValue(String value) {
    for (final item in SubnetAllocationStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetAllocationStrategy value: $value');
  }
}

/// Strategy for calculating subnet ranges from the subnet specifications.
enum SubnetAllocationStrategy {
  valueLegacy("Legacy"),
  valueAuto("Auto"),
  valueExact("Exact");

  const SubnetAllocationStrategy(this.wireValue);
  final String wireValue;

  static SubnetAllocationStrategy fromValue(String value) {
    for (final item in SubnetAllocationStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetAllocationStrategy value: $value');
  }
}

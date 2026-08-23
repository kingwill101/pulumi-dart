/// Allocation strategy to follow when determining the VM sizes distribution.
enum AllocationStrategy {
  lowestPrice("LowestPrice"),
  capacityOptimized("CapacityOptimized"),
  prioritized("Prioritized");

  const AllocationStrategy(this.wireValue);
  final String wireValue;

  static AllocationStrategy fromValue(String value) {
    for (final item in AllocationStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationStrategy value: $value');
  }
}

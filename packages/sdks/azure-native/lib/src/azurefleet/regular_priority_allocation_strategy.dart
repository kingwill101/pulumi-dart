/// Allocation strategy to follow when determining the VM sizes distribution for Regular VMs.
enum RegularPriorityAllocationStrategy {
  lowestPrice("LowestPrice"),
  prioritized("Prioritized");

  const RegularPriorityAllocationStrategy(this.wireValue);
  final String wireValue;

  static RegularPriorityAllocationStrategy fromValue(String value) {
    for (final item in RegularPriorityAllocationStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegularPriorityAllocationStrategy value: $value');
  }
}


/// Allocation strategy to follow when determining the VM sizes distribution for Regular VMs.
enum RegularPriorityAllocationStrategy {
  lowestPrice("LowestPrice"),
  prioritized("Prioritized");

  const RegularPriorityAllocationStrategy(this.value);
  final String value;

  static RegularPriorityAllocationStrategy fromValue(String value) {
    for (final item in RegularPriorityAllocationStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegularPriorityAllocationStrategy value: $value');
  }
}


/// Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated.
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

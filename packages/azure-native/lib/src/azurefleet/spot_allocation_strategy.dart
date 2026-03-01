/// Allocation strategy to follow when determining the VM sizes distribution for Spot VMs.
enum SpotAllocationStrategy {
  priceCapacityOptimized("PriceCapacityOptimized"),
  lowestPrice("LowestPrice"),
  capacityOptimized("CapacityOptimized");

  const SpotAllocationStrategy(this.value);
  final String value;

  static SpotAllocationStrategy fromValue(String value) {
    for (final item in SpotAllocationStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SpotAllocationStrategy value: $value');
  }
}


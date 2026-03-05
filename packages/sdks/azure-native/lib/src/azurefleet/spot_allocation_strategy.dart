/// Allocation strategy to follow when determining the VM sizes distribution for Spot VMs.
enum SpotAllocationStrategy {
  priceCapacityOptimized("PriceCapacityOptimized"),
  lowestPrice("LowestPrice"),
  capacityOptimized("CapacityOptimized");

  const SpotAllocationStrategy(this.wireValue);
  final String wireValue;

  static SpotAllocationStrategy fromValue(String value) {
    for (final item in SpotAllocationStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SpotAllocationStrategy value: $value');
  }
}


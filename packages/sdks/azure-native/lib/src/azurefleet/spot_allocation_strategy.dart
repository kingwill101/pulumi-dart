import 'package:pulumi/pulumi.dart' as pulumi;

/// Allocation strategy to follow when determining the VM sizes distribution for Spot VMs.
enum SpotAllocationStrategy implements pulumi.PulumiEnum<String> {
  priceCapacityOptimized("PriceCapacityOptimized"),
  lowestPrice("LowestPrice"),
  capacityOptimized("CapacityOptimized");

  const SpotAllocationStrategy(this.wireValue);
  @override
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

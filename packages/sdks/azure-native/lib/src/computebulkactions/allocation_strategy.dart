import 'package:pulumi/pulumi.dart' as pulumi;

/// Allocation strategy to follow when determining the VM sizes distribution.
enum AllocationStrategy implements pulumi.PulumiEnum<String> {
  lowestPrice("LowestPrice"),
  capacityOptimized("CapacityOptimized"),
  prioritized("Prioritized");

  const AllocationStrategy(this.wireValue);
  @override
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

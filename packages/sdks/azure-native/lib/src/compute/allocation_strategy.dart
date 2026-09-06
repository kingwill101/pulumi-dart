import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated.
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

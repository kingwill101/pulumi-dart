import 'package:pulumi/pulumi.dart' as pulumi;

/// Allocation strategy to follow when determining the VM sizes distribution for Regular VMs.
enum RegularPriorityAllocationStrategy implements pulumi.PulumiEnum<String> {
  lowestPrice("LowestPrice"),
  prioritized("Prioritized");

  const RegularPriorityAllocationStrategy(this.wireValue);
  @override
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

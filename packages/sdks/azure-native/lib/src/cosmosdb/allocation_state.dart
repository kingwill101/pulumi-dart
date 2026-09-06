import 'package:pulumi/pulumi.dart' as pulumi;

/// Allocation state of the cluster and data center resources. Active implies the virtual machines of the cluster are allocated, deallocated implies virtual machines and resources are deallocated.
enum AllocationState implements pulumi.PulumiEnum<String> {
  active("Active"),
  deallocated("Deallocated");

  const AllocationState(this.wireValue);
  @override
  final String wireValue;

  static AllocationState fromValue(String value) {
    for (final item in AllocationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationState value: $value');
  }
}

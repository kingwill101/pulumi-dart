/// Allocation state of the cluster and data center resources. Active implies the virtual machines of the cluster are allocated, deallocated implies virtual machines and resources are deallocated.
enum AllocationState {
  valueActive("Active"),
  valueDeallocated("Deallocated");

  const AllocationState(this.value);
  final String value;

  static AllocationState fromValue(String value) {
    for (final item in AllocationState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationState value: $value');
  }
}


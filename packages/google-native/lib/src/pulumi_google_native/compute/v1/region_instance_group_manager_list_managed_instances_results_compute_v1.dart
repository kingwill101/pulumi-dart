/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum RegionInstanceGroupManagerListManagedInstancesResultsComputeV1 {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const RegionInstanceGroupManagerListManagedInstancesResultsComputeV1(
      this.value);
  final String value;

  static RegionInstanceGroupManagerListManagedInstancesResultsComputeV1
      fromValue(String value) {
    for (final item
        in RegionInstanceGroupManagerListManagedInstancesResultsComputeV1
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionInstanceGroupManagerListManagedInstancesResultsComputeV1 value: $value');
  }
}

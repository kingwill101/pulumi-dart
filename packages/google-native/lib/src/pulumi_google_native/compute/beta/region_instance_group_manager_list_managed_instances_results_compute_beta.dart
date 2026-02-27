/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta(
      this.value);
  final String value;

  static RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta
      fromValue(String value) {
    for (final item
        in RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta value: $value');
  }
}

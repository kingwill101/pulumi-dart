/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum RegionInstanceGroupManagerListManagedInstancesResults {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const RegionInstanceGroupManagerListManagedInstancesResults(this.value);
  final String value;

  static RegionInstanceGroupManagerListManagedInstancesResults fromValue(
    String value,
  ) {
    for (final item
        in RegionInstanceGroupManagerListManagedInstancesResults.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionInstanceGroupManagerListManagedInstancesResults value: $value',
    );
  }
}

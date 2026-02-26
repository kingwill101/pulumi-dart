/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum RegionInstanceGroupManagerListManagedInstancesResults3 {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const RegionInstanceGroupManagerListManagedInstancesResults3(this.value);
  final String value;

  static RegionInstanceGroupManagerListManagedInstancesResults3 fromValue(
      String value) {
    for (final item
        in RegionInstanceGroupManagerListManagedInstancesResults3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionInstanceGroupManagerListManagedInstancesResults3 value: $value');
  }
}

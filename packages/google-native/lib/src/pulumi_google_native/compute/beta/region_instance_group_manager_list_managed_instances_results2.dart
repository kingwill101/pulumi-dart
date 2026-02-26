/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum RegionInstanceGroupManagerListManagedInstancesResults2 {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const RegionInstanceGroupManagerListManagedInstancesResults2(this.value);
  final String value;

  static RegionInstanceGroupManagerListManagedInstancesResults2 fromValue(
      String value) {
    for (final item
        in RegionInstanceGroupManagerListManagedInstancesResults2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionInstanceGroupManagerListManagedInstancesResults2 value: $value');
  }
}

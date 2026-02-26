/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum InstanceGroupManagerListManagedInstancesResults2 {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const InstanceGroupManagerListManagedInstancesResults2(this.value);
  final String value;

  static InstanceGroupManagerListManagedInstancesResults2 fromValue(
      String value) {
    for (final item
        in InstanceGroupManagerListManagedInstancesResults2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupManagerListManagedInstancesResults2 value: $value');
  }
}

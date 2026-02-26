/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum InstanceGroupManagerListManagedInstancesResults3 {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const InstanceGroupManagerListManagedInstancesResults3(this.value);
  final String value;

  static InstanceGroupManagerListManagedInstancesResults3 fromValue(
      String value) {
    for (final item
        in InstanceGroupManagerListManagedInstancesResults3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceGroupManagerListManagedInstancesResults3 value: $value');
  }
}

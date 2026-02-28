/// Pagination behavior of the listManagedInstances API method for this managed instance group.
enum InstanceGroupManagerListManagedInstancesResults {
  pageless("PAGELESS"),
  paginated("PAGINATED");

  const InstanceGroupManagerListManagedInstancesResults(this.value);
  final String value;

  static InstanceGroupManagerListManagedInstancesResults fromValue(String value) {
    for (final item in InstanceGroupManagerListManagedInstancesResults.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerListManagedInstancesResults value: $value');
  }
}


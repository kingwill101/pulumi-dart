/// How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
enum ComputeSchedulingOnHostMaintenance2 {
  onHostMaintenanceUnspecified("ON_HOST_MAINTENANCE_UNSPECIFIED"),
  terminate("TERMINATE"),
  migrate("MIGRATE");

  const ComputeSchedulingOnHostMaintenance2(this.value);
  final String value;

  static ComputeSchedulingOnHostMaintenance2 fromValue(String value) {
    for (final item in ComputeSchedulingOnHostMaintenance2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ComputeSchedulingOnHostMaintenance2 value: $value');
  }
}

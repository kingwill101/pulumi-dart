/// How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
enum ComputeSchedulingOnHostMaintenance {
  onHostMaintenanceUnspecified("ON_HOST_MAINTENANCE_UNSPECIFIED"),
  terminate("TERMINATE"),
  migrate("MIGRATE");

  const ComputeSchedulingOnHostMaintenance(this.value);
  final String value;

  static ComputeSchedulingOnHostMaintenance fromValue(String value) {
    for (final item in ComputeSchedulingOnHostMaintenance.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ComputeSchedulingOnHostMaintenance value: $value');
  }
}

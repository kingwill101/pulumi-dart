/// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
enum SchedulingOnHostMaintenanceComputeV1 {
  migrate("MIGRATE"),
  terminate("TERMINATE");

  const SchedulingOnHostMaintenanceComputeV1(this.value);
  final String value;

  static SchedulingOnHostMaintenanceComputeV1 fromValue(String value) {
    for (final item in SchedulingOnHostMaintenanceComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SchedulingOnHostMaintenanceComputeV1 value: $value',
    );
  }
}

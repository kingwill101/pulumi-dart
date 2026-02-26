/// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
enum SchedulingOnHostMaintenance2 {
  migrate("MIGRATE"),
  terminate("TERMINATE");

  const SchedulingOnHostMaintenance2(this.value);
  final String value;

  static SchedulingOnHostMaintenance2 fromValue(String value) {
    for (final item in SchedulingOnHostMaintenance2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingOnHostMaintenance2 value: $value');
  }
}

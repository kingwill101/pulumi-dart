/// Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Set VM host maintenance policy.
enum SchedulingOnHostMaintenance3 {
  migrate("MIGRATE"),
  terminate("TERMINATE");

  const SchedulingOnHostMaintenance3(this.value);
  final String value;

  static SchedulingOnHostMaintenance3 fromValue(String value) {
    for (final item in SchedulingOnHostMaintenance3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingOnHostMaintenance3 value: $value');
  }
}

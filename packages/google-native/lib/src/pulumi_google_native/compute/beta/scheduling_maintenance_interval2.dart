/// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
enum SchedulingMaintenanceInterval2 {
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC"),
  recurrent("RECURRENT");

  const SchedulingMaintenanceInterval2(this.value);
  final String value;

  static SchedulingMaintenanceInterval2 fromValue(String value) {
    for (final item in SchedulingMaintenanceInterval2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingMaintenanceInterval2 value: $value');
  }
}

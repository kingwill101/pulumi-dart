/// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
enum SchedulingMaintenanceIntervalComputeBeta {
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC"),
  recurrent("RECURRENT");

  const SchedulingMaintenanceIntervalComputeBeta(this.value);
  final String value;

  static SchedulingMaintenanceIntervalComputeBeta fromValue(String value) {
    for (final item in SchedulingMaintenanceIntervalComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SchedulingMaintenanceIntervalComputeBeta value: $value');
  }
}

/// Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
enum NodeGroupMaintenanceIntervalComputeBeta {
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC"),
  recurrent("RECURRENT");

  const NodeGroupMaintenanceIntervalComputeBeta(this.value);
  final String value;

  static NodeGroupMaintenanceIntervalComputeBeta fromValue(String value) {
    for (final item in NodeGroupMaintenanceIntervalComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NodeGroupMaintenanceIntervalComputeBeta value: $value');
  }
}

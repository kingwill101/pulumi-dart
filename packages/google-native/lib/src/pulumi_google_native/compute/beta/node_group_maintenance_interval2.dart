/// Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
enum NodeGroupMaintenanceInterval2 {
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC"),
  recurrent("RECURRENT");

  const NodeGroupMaintenanceInterval2(this.value);
  final String value;

  static NodeGroupMaintenanceInterval2 fromValue(String value) {
    for (final item in NodeGroupMaintenanceInterval2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupMaintenanceInterval2 value: $value');
  }
}

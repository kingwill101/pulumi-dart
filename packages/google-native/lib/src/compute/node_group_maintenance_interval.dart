/// Specifies the frequency of planned maintenance events. The accepted values are: `AS_NEEDED` and `RECURRENT`.
enum NodeGroupMaintenanceInterval {
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC"),
  recurrent("RECURRENT");

  const NodeGroupMaintenanceInterval(this.value);
  final String value;

  static NodeGroupMaintenanceInterval fromValue(String value) {
    for (final item in NodeGroupMaintenanceInterval.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupMaintenanceInterval value: $value');
  }
}

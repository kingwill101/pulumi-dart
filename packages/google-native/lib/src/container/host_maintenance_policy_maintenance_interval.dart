/// Specifies the frequency of planned maintenance events.
enum HostMaintenancePolicyMaintenanceInterval {
  maintenanceIntervalUnspecified("MAINTENANCE_INTERVAL_UNSPECIFIED"),
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC");

  const HostMaintenancePolicyMaintenanceInterval(this.value);
  final String value;

  static HostMaintenancePolicyMaintenanceInterval fromValue(String value) {
    for (final item in HostMaintenancePolicyMaintenanceInterval.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostMaintenancePolicyMaintenanceInterval value: $value');
  }
}


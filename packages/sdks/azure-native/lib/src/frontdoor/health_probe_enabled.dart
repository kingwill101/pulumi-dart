/// Whether to enable health probes to be made against backends defined under backendPools. Health probes can only be disabled if there is a single enabled backend in single enabled backend pool.
enum HealthProbeEnabled {
  enabled("Enabled"),
  disabled("Disabled");

  const HealthProbeEnabled(this.wireValue);
  final String wireValue;

  static HealthProbeEnabled fromValue(String value) {
    for (final item in HealthProbeEnabled.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HealthProbeEnabled value: $value');
  }
}

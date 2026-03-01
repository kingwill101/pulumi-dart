/// Whether to enable health probes to be made against backends defined under backendPools. Health probes can only be disabled if there is a single enabled backend in single enabled backend pool.
enum HealthProbeEnabled {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const HealthProbeEnabled(this.value);
  final String value;

  static HealthProbeEnabled fromValue(String value) {
    for (final item in HealthProbeEnabled.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HealthProbeEnabled value: $value');
  }
}


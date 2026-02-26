/// Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Composer environments in versions composer-2.2.0-airflow-*.*.* and newer.
enum EnvironmentConfigResilienceMode {
  resilienceModeUnspecified("RESILIENCE_MODE_UNSPECIFIED"),
  highResilience("HIGH_RESILIENCE");

  const EnvironmentConfigResilienceMode(this.value);
  final String value;

  static EnvironmentConfigResilienceMode fromValue(String value) {
    for (final item in EnvironmentConfigResilienceMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnvironmentConfigResilienceMode value: $value');
  }
}

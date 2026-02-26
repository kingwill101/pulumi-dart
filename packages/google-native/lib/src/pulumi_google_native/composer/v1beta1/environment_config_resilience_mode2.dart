/// Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Composer environments in versions composer-2.2.0-airflow-*.*.* and newer.
enum EnvironmentConfigResilienceMode2 {
  resilienceModeUnspecified("RESILIENCE_MODE_UNSPECIFIED"),
  highResilience("HIGH_RESILIENCE");

  const EnvironmentConfigResilienceMode2(this.value);
  final String value;

  static EnvironmentConfigResilienceMode2 fromValue(String value) {
    for (final item in EnvironmentConfigResilienceMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnvironmentConfigResilienceMode2 value: $value');
  }
}

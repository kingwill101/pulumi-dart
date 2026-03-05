/// When enabled, Playwright client workers can connect to cloud-hosted browsers. This can increase the number of parallel workers for a test run, significantly minimizing test completion durations.
enum EnablementStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const EnablementStatus(this.wireValue);
  final String wireValue;

  static EnablementStatus fromValue(String value) {
    for (final item in EnablementStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnablementStatus value: $value');
  }
}


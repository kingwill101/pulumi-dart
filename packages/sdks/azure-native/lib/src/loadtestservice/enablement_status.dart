/// Controls the connection region for client workers to cloud-hosted browsers. When enabled, workers connect to browsers in the closest Azure region for lower latency. When disabled, workers connect to browsers in the Azure region where the workspace was created.
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

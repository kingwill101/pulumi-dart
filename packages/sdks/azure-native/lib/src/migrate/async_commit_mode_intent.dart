/// Gets or sets user preference indicating intent of async commit mode.
enum AsyncCommitModeIntent {
  none("None"),
  highAvailability("HighAvailability"),
  disasterRecovery("DisasterRecovery");

  const AsyncCommitModeIntent(this.wireValue);
  final String wireValue;

  static AsyncCommitModeIntent fromValue(String value) {
    for (final item in AsyncCommitModeIntent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AsyncCommitModeIntent value: $value');
  }
}


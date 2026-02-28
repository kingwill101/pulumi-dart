/// Where logs should be saved.
enum LogsPolicyDestination {
  destinationUnspecified("DESTINATION_UNSPECIFIED"),
  cloudLogging("CLOUD_LOGGING"),
  path("PATH");

  const LogsPolicyDestination(this.value);
  final String value;

  static LogsPolicyDestination fromValue(String value) {
    for (final item in LogsPolicyDestination.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogsPolicyDestination value: $value');
  }
}

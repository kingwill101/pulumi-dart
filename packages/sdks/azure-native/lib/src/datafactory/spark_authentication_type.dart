/// The authentication method used to access the Spark server.
enum SparkAuthenticationType {
  valueAnonymous("Anonymous"),
  valueUsername("Username"),
  valueUsernameAndPassword("UsernameAndPassword"),
  valueWindowsAzureHDInsightService("WindowsAzureHDInsightService");

  const SparkAuthenticationType(this.value);
  final String value;

  static SparkAuthenticationType fromValue(String value) {
    for (final item in SparkAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkAuthenticationType value: $value');
  }
}


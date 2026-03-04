/// The authentication method used to access the Spark server.
enum SparkAuthenticationType {
  valueAnonymous("Anonymous"),
  valueUsername("Username"),
  valueUsernameAndPassword("UsernameAndPassword"),
  valueWindowsAzureHDInsightService("WindowsAzureHDInsightService");

  const SparkAuthenticationType(this.wireValue);
  final String wireValue;

  static SparkAuthenticationType fromValue(String value) {
    for (final item in SparkAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkAuthenticationType value: $value');
  }
}

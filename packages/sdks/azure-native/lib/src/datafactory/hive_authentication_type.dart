/// The authentication method used to access the Hive server.
enum HiveAuthenticationType {
  valueAnonymous("Anonymous"),
  valueUsername("Username"),
  valueUsernameAndPassword("UsernameAndPassword"),
  valueWindowsAzureHDInsightService("WindowsAzureHDInsightService");

  const HiveAuthenticationType(this.wireValue);
  final String wireValue;

  static HiveAuthenticationType fromValue(String value) {
    for (final item in HiveAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HiveAuthenticationType value: $value');
  }
}


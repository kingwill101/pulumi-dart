/// The authentication method used to access the Hive server.
enum HiveAuthenticationType {
  valueAnonymous("Anonymous"),
  valueUsername("Username"),
  valueUsernameAndPassword("UsernameAndPassword"),
  valueWindowsAzureHDInsightService("WindowsAzureHDInsightService");

  const HiveAuthenticationType(this.value);
  final String value;

  static HiveAuthenticationType fromValue(String value) {
    for (final item in HiveAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HiveAuthenticationType value: $value');
  }
}


/// The authentication method used to access the Hive server.
enum HiveAuthenticationType {
  anonymous("Anonymous"),
  username("Username"),
  usernameAndPassword("UsernameAndPassword"),
  windowsAzureHDInsightService("WindowsAzureHDInsightService");

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

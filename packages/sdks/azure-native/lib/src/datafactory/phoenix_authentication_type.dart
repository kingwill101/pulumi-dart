/// The authentication mechanism used to connect to the Phoenix server.
enum PhoenixAuthenticationType {
  valueAnonymous("Anonymous"),
  valueUsernameAndPassword("UsernameAndPassword"),
  valueWindowsAzureHDInsightService("WindowsAzureHDInsightService");

  const PhoenixAuthenticationType(this.wireValue);
  final String wireValue;

  static PhoenixAuthenticationType fromValue(String value) {
    for (final item in PhoenixAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PhoenixAuthenticationType value: $value');
  }
}

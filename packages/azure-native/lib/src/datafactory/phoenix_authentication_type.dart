/// The authentication mechanism used to connect to the Phoenix server.
enum PhoenixAuthenticationType {
  valueAnonymous("Anonymous"),
  valueUsernameAndPassword("UsernameAndPassword"),
  valueWindowsAzureHDInsightService("WindowsAzureHDInsightService");

  const PhoenixAuthenticationType(this.value);
  final String value;

  static PhoenixAuthenticationType fromValue(String value) {
    for (final item in PhoenixAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PhoenixAuthenticationType value: $value');
  }
}


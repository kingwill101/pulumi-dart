/// The authentication mechanism to use to connect to the HBase server.
enum HBaseAuthenticationType {
  valueAnonymous("Anonymous"),
  valueBasic("Basic");

  const HBaseAuthenticationType(this.value);
  final String value;

  static HBaseAuthenticationType fromValue(String value) {
    for (final item in HBaseAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HBaseAuthenticationType value: $value');
  }
}


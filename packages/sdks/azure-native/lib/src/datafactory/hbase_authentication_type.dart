/// The authentication mechanism to use to connect to the HBase server.
enum HBaseAuthenticationType {
  anonymous("Anonymous"),
  basic("Basic");

  const HBaseAuthenticationType(this.wireValue);
  final String wireValue;

  static HBaseAuthenticationType fromValue(String value) {
    for (final item in HBaseAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HBaseAuthenticationType value: $value');
  }
}

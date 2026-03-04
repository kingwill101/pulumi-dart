/// The authentication mechanism used to connect to the Presto server.
enum PrestoAuthenticationType {
  valueAnonymous("Anonymous"),
  valueLDAP("LDAP");

  const PrestoAuthenticationType(this.wireValue);
  final String wireValue;

  static PrestoAuthenticationType fromValue(String value) {
    for (final item in PrestoAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrestoAuthenticationType value: $value');
  }
}

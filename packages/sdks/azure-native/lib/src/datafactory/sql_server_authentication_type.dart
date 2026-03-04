/// The type used for authentication. Type: string.
enum SqlServerAuthenticationType {
  valueSQL("SQL"),
  valueWindows("Windows"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const SqlServerAuthenticationType(this.wireValue);
  final String wireValue;

  static SqlServerAuthenticationType fromValue(String value) {
    for (final item in SqlServerAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlServerAuthenticationType value: $value');
  }
}

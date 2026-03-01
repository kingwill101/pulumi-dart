/// The type used for authentication. Type: string.
enum SqlServerAuthenticationType {
  valueSQL("SQL"),
  valueWindows("Windows"),
  valueUserAssignedManagedIdentity("UserAssignedManagedIdentity");

  const SqlServerAuthenticationType(this.value);
  final String value;

  static SqlServerAuthenticationType fromValue(String value) {
    for (final item in SqlServerAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlServerAuthenticationType value: $value');
  }
}


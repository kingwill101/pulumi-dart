/// Authentication type to use for connection
enum AuthenticationType {
  valueNone("None"),
  valueWindowsAuthentication("WindowsAuthentication"),
  valueSqlAuthentication("SqlAuthentication"),
  valueActiveDirectoryIntegrated("ActiveDirectoryIntegrated"),
  valueActiveDirectoryPassword("ActiveDirectoryPassword");

  const AuthenticationType(this.wireValue);
  final String wireValue;

  static AuthenticationType fromValue(String value) {
    for (final item in AuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationType value: $value');
  }
}

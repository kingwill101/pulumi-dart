/// Authentication type to use for connection
enum AuthenticationType {
  valueNone("None"),
  valueWindowsAuthentication("WindowsAuthentication"),
  valueSqlAuthentication("SqlAuthentication"),
  valueActiveDirectoryIntegrated("ActiveDirectoryIntegrated"),
  valueActiveDirectoryPassword("ActiveDirectoryPassword");

  const AuthenticationType(this.value);
  final String value;

  static AuthenticationType fromValue(String value) {
    for (final item in AuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationType value: $value');
  }
}


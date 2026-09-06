import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication type to use for connection
enum AuthenticationType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueWindowsAuthentication("WindowsAuthentication"),
  valueSqlAuthentication("SqlAuthentication"),
  valueActiveDirectoryIntegrated("ActiveDirectoryIntegrated"),
  valueActiveDirectoryPassword("ActiveDirectoryPassword");

  const AuthenticationType(this.wireValue);
  @override
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

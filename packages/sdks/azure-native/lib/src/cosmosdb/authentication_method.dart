import 'package:pulumi/pulumi.dart' as pulumi;

/// Which authentication method Cassandra should use to authenticate clients. 'None' turns off authentication, so should not be used except in emergencies. 'Cassandra' is the default password based authentication. The default is 'Cassandra'.
enum AuthenticationMethod implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueCassandra("Cassandra"),
  valueLdap("Ldap");

  const AuthenticationMethod(this.wireValue);
  @override
  final String wireValue;

  static AuthenticationMethod fromValue(String value) {
    for (final item in AuthenticationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationMethod value: $value');
  }
}

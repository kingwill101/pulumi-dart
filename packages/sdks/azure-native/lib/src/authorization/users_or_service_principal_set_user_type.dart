import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of user.
enum UsersOrServicePrincipalSetUserType implements pulumi.PulumiEnum<String> {
  user("User"),
  group("Group"),
  servicePrincipal("ServicePrincipal");

  const UsersOrServicePrincipalSetUserType(this.wireValue);
  @override
  final String wireValue;

  static UsersOrServicePrincipalSetUserType fromValue(String value) {
    for (final item in UsersOrServicePrincipalSetUserType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UsersOrServicePrincipalSetUserType value: $value');
  }
}

/// The type of user.
enum UsersOrServicePrincipalSetUserType {
  user("User"),
  group("Group"),
  servicePrincipal("ServicePrincipal");

  const UsersOrServicePrincipalSetUserType(this.wireValue);
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

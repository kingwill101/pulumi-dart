/// Kind of the authentication setting
enum AuthenticationKind {
  managedIdentity("ManagedIdentity");

  const AuthenticationKind(this.wireValue);
  final String wireValue;

  static AuthenticationKind fromValue(String value) {
    for (final item in AuthenticationKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationKind value: $value');
  }
}

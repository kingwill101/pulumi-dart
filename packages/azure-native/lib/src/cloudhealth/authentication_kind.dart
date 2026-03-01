/// Kind of the authentication setting
enum AuthenticationKind {
  managedIdentity("ManagedIdentity");

  const AuthenticationKind(this.value);
  final String value;

  static AuthenticationKind fromValue(String value) {
    for (final item in AuthenticationKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationKind value: $value');
  }
}


/// The method to authenticate the user of the client at the server.
enum AuthenticationMethod {
  anonymous("Anonymous"),
  certificate("Certificate"),
  usernamePassword("UsernamePassword");

  const AuthenticationMethod(this.wireValue);
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

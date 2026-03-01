/// Indicates if the server supports password based authentication.
enum PasswordBasedAuth {
  enabled("Enabled"),
  disabled("Disabled");

  const PasswordBasedAuth(this.value);
  final String value;

  static PasswordBasedAuth fromValue(String value) {
    for (final item in PasswordBasedAuth.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PasswordBasedAuth value: $value');
  }
}


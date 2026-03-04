enum PasswordAuth {
  enabled("enabled"),
  disabled("disabled");

  const PasswordAuth(this.wireValue);
  final String wireValue;

  static PasswordAuth fromValue(String value) {
    for (final item in PasswordAuth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PasswordAuth value: $value');
  }
}

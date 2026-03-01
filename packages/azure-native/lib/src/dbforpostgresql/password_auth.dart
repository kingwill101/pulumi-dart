enum PasswordAuth {
  enabled("enabled"),
  disabled("disabled");

  const PasswordAuth(this.value);
  final String value;

  static PasswordAuth fromValue(String value) {
    for (final item in PasswordAuth.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PasswordAuth value: $value');
  }
}


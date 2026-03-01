enum ActiveDirectoryAuth {
  enabled("enabled"),
  disabled("disabled");

  const ActiveDirectoryAuth(this.value);
  final String value;

  static ActiveDirectoryAuth fromValue(String value) {
    for (final item in ActiveDirectoryAuth.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActiveDirectoryAuth value: $value');
  }
}


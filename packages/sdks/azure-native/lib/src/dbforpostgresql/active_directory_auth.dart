enum ActiveDirectoryAuth {
  enabled("enabled"),
  disabled("disabled");

  const ActiveDirectoryAuth(this.wireValue);
  final String wireValue;

  static ActiveDirectoryAuth fromValue(String value) {
    for (final item in ActiveDirectoryAuth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActiveDirectoryAuth value: $value');
  }
}

/// Server version.
enum ServerVersion {
  value57("5.7"),
  value8021("8.0.21");

  const ServerVersion(this.wireValue);
  final String wireValue;

  static ServerVersion fromValue(String value) {
    for (final item in ServerVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerVersion value: $value');
  }
}


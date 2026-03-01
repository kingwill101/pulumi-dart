/// Server version.
enum ServerVersion {
  value57("5.7"),
  value8021("8.0.21");

  const ServerVersion(this.value);
  final String value;

  static ServerVersion fromValue(String value) {
    for (final item in ServerVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerVersion value: $value');
  }
}


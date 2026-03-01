/// Server version.
enum ServerVersion {
  value102("10.2"),
  value103("10.3");

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


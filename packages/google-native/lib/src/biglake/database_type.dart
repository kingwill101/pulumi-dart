/// The database type.
enum DatabaseType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  hive("HIVE");

  const DatabaseType(this.value);
  final String value;

  static DatabaseType fromValue(String value) {
    for (final item in DatabaseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseType value: $value');
  }
}


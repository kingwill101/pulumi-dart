/// The database engine.
enum DatabaseTypeEngine2 {
  databaseEngineUnspecified("DATABASE_ENGINE_UNSPECIFIED"),
  mysql("MYSQL");

  const DatabaseTypeEngine2(this.value);
  final String value;

  static DatabaseTypeEngine2 fromValue(String value) {
    for (final item in DatabaseTypeEngine2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseTypeEngine2 value: $value');
  }
}

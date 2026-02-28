/// Required. Engine type.
enum DatabaseEngineInfoEngine {
  databaseEngineUnspecified("DATABASE_ENGINE_UNSPECIFIED"),
  mysql("MYSQL"),
  postgresql("POSTGRESQL"),
  oracle("ORACLE");

  const DatabaseEngineInfoEngine(this.value);
  final String value;

  static DatabaseEngineInfoEngine fromValue(String value) {
    for (final item in DatabaseEngineInfoEngine.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseEngineInfoEngine value: $value');
  }
}


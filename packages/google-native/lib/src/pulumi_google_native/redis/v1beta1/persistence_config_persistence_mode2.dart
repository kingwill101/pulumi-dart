/// Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
enum PersistenceConfigPersistenceMode2 {
  persistenceModeUnspecified("PERSISTENCE_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  rdb("RDB");

  const PersistenceConfigPersistenceMode2(this.value);
  final String value;

  static PersistenceConfigPersistenceMode2 fromValue(String value) {
    for (final item in PersistenceConfigPersistenceMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PersistenceConfigPersistenceMode2 value: $value');
  }
}

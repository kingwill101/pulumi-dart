/// The concurrency control mode to use for this database.
enum DatabaseConcurrencyMode {
  concurrencyModeUnspecified("CONCURRENCY_MODE_UNSPECIFIED"),
  optimistic("OPTIMISTIC"),
  pessimistic("PESSIMISTIC"),
  optimisticWithEntityGroups("OPTIMISTIC_WITH_ENTITY_GROUPS");

  const DatabaseConcurrencyMode(this.value);
  final String value;

  static DatabaseConcurrencyMode fromValue(String value) {
    for (final item in DatabaseConcurrencyMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseConcurrencyMode value: $value');
  }
}

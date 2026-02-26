/// Optional. Flag to disable database persistence for execution data, including event execution info, execution export info, execution metadata index and execution param index.
enum TemplatesVersionDatabasePersistencePolicy {
  databasePersistencePolicyUnspecified(
      "DATABASE_PERSISTENCE_POLICY_UNSPECIFIED"),
  databasePersistenceDisabled("DATABASE_PERSISTENCE_DISABLED"),
  databasePersistenceAsync("DATABASE_PERSISTENCE_ASYNC");

  const TemplatesVersionDatabasePersistencePolicy(this.value);
  final String value;

  static TemplatesVersionDatabasePersistencePolicy fromValue(String value) {
    for (final item in TemplatesVersionDatabasePersistencePolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown TemplatesVersionDatabasePersistencePolicy value: $value');
  }
}

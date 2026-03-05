/// Task Scope
enum TaskScope {
  wave("Wave"),
  migrationEntity("MigrationEntity"),
  migrationEntityGroup("MigrationEntityGroup");

  const TaskScope(this.wireValue);
  final String wireValue;

  static TaskScope fromValue(String value) {
    for (final item in TaskScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskScope value: $value');
  }
}


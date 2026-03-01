/// Task Scope
enum TaskScope {
  wave("Wave"),
  migrationEntity("MigrationEntity"),
  migrationEntityGroup("MigrationEntityGroup");

  const TaskScope(this.value);
  final String value;

  static TaskScope fromValue(String value) {
    for (final item in TaskScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskScope value: $value');
  }
}


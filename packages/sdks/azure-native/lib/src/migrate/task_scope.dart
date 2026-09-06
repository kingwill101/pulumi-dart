import 'package:pulumi/pulumi.dart' as pulumi;

/// Task Scope
enum TaskScope implements pulumi.PulumiEnum<String> {
  wave("Wave"),
  migrationEntity("MigrationEntity"),
  migrationEntityGroup("MigrationEntityGroup");

  const TaskScope(this.wireValue);
  @override
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

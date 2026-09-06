import 'package:pulumi/pulumi.dart' as pulumi;

/// The current status of task.
enum TaskStatus implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const TaskStatus(this.wireValue);
  @override
  final String wireValue;

  static TaskStatus fromValue(String value) {
    for (final item in TaskStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskStatus value: $value');
  }
}

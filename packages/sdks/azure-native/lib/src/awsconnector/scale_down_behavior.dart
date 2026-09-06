import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ScaleDownBehavior implements pulumi.PulumiEnum<String> {
  tERMINATEATINSTANCEHOUR("TERMINATE_AT_INSTANCE_HOUR"),
  tERMINATEATTASKCOMPLETION("TERMINATE_AT_TASK_COMPLETION");

  const ScaleDownBehavior(this.wireValue);
  @override
  final String wireValue;

  static ScaleDownBehavior fromValue(String value) {
    for (final item in ScaleDownBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleDownBehavior value: $value');
  }
}

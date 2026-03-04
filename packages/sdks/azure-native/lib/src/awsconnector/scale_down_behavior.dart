/// Property value
enum ScaleDownBehavior {
  tERMINATEATINSTANCEHOUR("TERMINATE_AT_INSTANCE_HOUR"),
  tERMINATEATTASKCOMPLETION("TERMINATE_AT_TASK_COMPLETION");

  const ScaleDownBehavior(this.wireValue);
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

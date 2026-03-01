/// Property value
enum ScaleDownBehavior {
  tERMINATEATINSTANCEHOUR("TERMINATE_AT_INSTANCE_HOUR"),
  tERMINATEATTASKCOMPLETION("TERMINATE_AT_TASK_COMPLETION");

  const ScaleDownBehavior(this.value);
  final String value;

  static ScaleDownBehavior fromValue(String value) {
    for (final item in ScaleDownBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleDownBehavior value: $value');
  }
}


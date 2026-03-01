/// Dictates how next tasks will be executed.
enum EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy {
  unspecified("UNSPECIFIED"),
  runAllMatch("RUN_ALL_MATCH"),
  runFirstMatch("RUN_FIRST_MATCH");

  const EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy(
    this.value,
  );
  final String value;

  static EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy
  fromValue(String value) {
    for (final item
        in EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy value: $value',
    );
  }
}

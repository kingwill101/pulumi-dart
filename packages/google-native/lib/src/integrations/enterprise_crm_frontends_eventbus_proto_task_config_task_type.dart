/// Defines the type of the task
enum EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType {
  task("TASK"),
  asisTemplate("ASIS_TEMPLATE"),
  ioTemplate("IO_TEMPLATE");

  const EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType(this.value);
  final String value;

  static EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType fromValue(
      String value) {
    for (final item
        in EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType value: $value');
  }
}

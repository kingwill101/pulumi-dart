/// Defines the type of the task
enum EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType {
  task("TASK"),
  asisTemplate("ASIS_TEMPLATE"),
  ioTemplate("IO_TEMPLATE");

  const EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType(this.value);
  final String value;

  static EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType fromValue(
    String value,
  ) {
    for (final item
        in EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType value: $value',
    );
  }
}

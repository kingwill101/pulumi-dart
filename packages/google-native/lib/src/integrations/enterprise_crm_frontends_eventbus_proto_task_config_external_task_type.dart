enum EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType {
  externalTaskTypeUnspecified("EXTERNAL_TASK_TYPE_UNSPECIFIED"),
  normalTask("NORMAL_TASK"),
  errorTask("ERROR_TASK");

  const EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType(this.value);
  final String value;

  static EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType fromValue(String value) {
    for (final item in EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType value: $value');
  }
}


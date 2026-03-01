/// If set, overrides the option configured in the Task implementation class.
enum EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption {
  unspecifiedJsonValidationOption("UNSPECIFIED_JSON_VALIDATION_OPTION"),
  skip("SKIP"),
  preExecution("PRE_EXECUTION"),
  postExecution("POST_EXECUTION"),
  prePostExecution("PRE_POST_EXECUTION");

  const EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption(
    this.value,
  );
  final String value;

  static EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption
  fromValue(String value) {
    for (final item
        in EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption value: $value',
    );
  }
}

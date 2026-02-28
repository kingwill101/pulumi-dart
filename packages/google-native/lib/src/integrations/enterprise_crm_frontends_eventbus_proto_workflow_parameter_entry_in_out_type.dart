/// Specifies the input/output type for the parameter.
enum EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType {
  inOutTypeUnspecified("IN_OUT_TYPE_UNSPECIFIED"),
  in_("IN"),
  out("OUT"),
  inOut("IN_OUT");

  const EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType(
      this.value);
  final String value;

  static EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType
      fromValue(String value) {
    for (final item
        in EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryInOutType value: $value');
  }
}

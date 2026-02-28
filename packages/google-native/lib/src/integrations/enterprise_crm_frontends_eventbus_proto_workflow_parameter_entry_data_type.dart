/// The data type of the parameter.
enum EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryDataType {
  dataTypeUnspecified("DATA_TYPE_UNSPECIFIED"),
  stringValue("STRING_VALUE"),
  intValue("INT_VALUE"),
  doubleValue("DOUBLE_VALUE"),
  booleanValue("BOOLEAN_VALUE"),
  protoValue("PROTO_VALUE"),
  serializedObjectValue("SERIALIZED_OBJECT_VALUE"),
  stringArray("STRING_ARRAY"),
  intArray("INT_ARRAY"),
  doubleArray("DOUBLE_ARRAY"),
  protoArray("PROTO_ARRAY"),
  protoEnum("PROTO_ENUM"),
  booleanArray("BOOLEAN_ARRAY"),
  protoEnumArray("PROTO_ENUM_ARRAY"),
  bytes("BYTES"),
  bytesArray("BYTES_ARRAY"),
  nonSerializableObject("NON_SERIALIZABLE_OBJECT"),
  jsonValue("JSON_VALUE");

  const EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryDataType(this.value);
  final String value;

  static EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryDataType fromValue(String value) {
    for (final item in EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryDataType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntryDataType value: $value');
  }
}


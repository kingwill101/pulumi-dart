/// Required. The data type of this instruction.
enum InstructionDataType {
  dataTypeUnspecified("DATA_TYPE_UNSPECIFIED"),
  image("IMAGE"),
  video("VIDEO"),
  text("TEXT"),
  generalData("GENERAL_DATA");

  const InstructionDataType(this.value);
  final String value;

  static InstructionDataType fromValue(String value) {
    for (final item in InstructionDataType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstructionDataType value: $value');
  }
}


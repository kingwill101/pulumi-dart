/// Kafka Output Data Format Type
enum DataFormatType {
  aVRO("AVRO"),
  jSON("JSON"),
  sTRING("STRING"),
  bYTES("BYTES"),
  pROTOBUF("PROTOBUF");

  const DataFormatType(this.value);
  final String value;

  static DataFormatType fromValue(String value) {
    for (final item in DataFormatType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataFormatType value: $value');
  }
}


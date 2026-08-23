/// Kafka Output Data Format Type
enum DataFormatType {
  aVRO("AVRO"),
  jSON("JSON"),
  sTRING("STRING"),
  bYTES("BYTES"),
  pROTOBUF("PROTOBUF");

  const DataFormatType(this.wireValue);
  final String wireValue;

  static DataFormatType fromValue(String value) {
    for (final item in DataFormatType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataFormatType value: $value');
  }
}

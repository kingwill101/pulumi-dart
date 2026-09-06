import 'package:pulumi/pulumi.dart' as pulumi;

/// Kafka Output Data Format Type
enum DataFormatType implements pulumi.PulumiEnum<String> {
  aVRO("AVRO"),
  jSON("JSON"),
  sTRING("STRING"),
  bYTES("BYTES"),
  pROTOBUF("PROTOBUF");

  const DataFormatType(this.wireValue);
  @override
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

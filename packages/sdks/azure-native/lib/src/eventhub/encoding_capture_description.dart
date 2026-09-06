import 'package:pulumi/pulumi.dart' as pulumi;

/// Enumerates the possible values for the encoding format of capture description. Note: 'AvroDeflate' will be deprecated in New API Version
enum EncodingCaptureDescription implements pulumi.PulumiEnum<String> {
  valueAvro("Avro"),
  valueAvroDeflate("AvroDeflate");

  const EncodingCaptureDescription(this.wireValue);
  @override
  final String wireValue;

  static EncodingCaptureDescription fromValue(String value) {
    for (final item in EncodingCaptureDescription.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncodingCaptureDescription value: $value');
  }
}

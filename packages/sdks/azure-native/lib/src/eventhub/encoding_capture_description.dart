/// Enumerates the possible values for the encoding format of capture description. Note: 'AvroDeflate' will be deprecated in New API Version
enum EncodingCaptureDescription {
  valueAvro("Avro"),
  valueAvroDeflate("AvroDeflate");

  const EncodingCaptureDescription(this.value);
  final String value;

  static EncodingCaptureDescription fromValue(String value) {
    for (final item in EncodingCaptureDescription.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncodingCaptureDescription value: $value');
  }
}


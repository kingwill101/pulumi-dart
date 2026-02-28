// ignore_for_file: unused_element, unnecessary_cast


/// Timestamp value type.
class GoogleCloudContentwarehouseV1TimestampValueResponse {
  /// The string must represent a valid instant in UTC and is parsed using java.time.format.DateTimeFormatter.ISO_INSTANT. e.g. "2013-09-29T18:46:19Z"
  final String textValue;
  /// Timestamp value
  final String timestampValue;

  /// Creates a new [GoogleCloudContentwarehouseV1TimestampValueResponse].
  /// [textValue] The string must represent a valid instant in UTC and is parsed using java.time.format.DateTimeFormatter.ISO_INSTANT. e.g. "2013-09-29T18:46:19Z"
  /// [timestampValue] Timestamp value
  GoogleCloudContentwarehouseV1TimestampValueResponse({
    required this.textValue,
    required this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textValue': textValue,
      'timestampValue': timestampValue,
    };
  }

  factory GoogleCloudContentwarehouseV1TimestampValueResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1TimestampValueResponse(
      textValue: map['textValue'] as String,
      timestampValue: map['timestampValue'] as String,
    );
  }
}


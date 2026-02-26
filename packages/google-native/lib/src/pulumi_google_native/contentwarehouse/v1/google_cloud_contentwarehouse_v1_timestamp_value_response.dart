// ignore_for_file: unused_element, unnecessary_cast

/// Timestamp value type.
class GoogleCloudContentwarehouseV1TimestampValueResponse {
  /// The string must represent a valid instant in UTC and is parsed using java.time.format.DateTimeFormatter.ISO_INSTANT. e.g. "2013-09-29T18:46:19Z"
  final String textValue;

  /// Timestamp value
  final String timestampValue;

  GoogleCloudContentwarehouseV1TimestampValueResponse({
    required this.textValue,
    required this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['textValue'] = textValue;
    map['timestampValue'] = timestampValue;
    return map;
  }

  factory GoogleCloudContentwarehouseV1TimestampValueResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1TimestampValueResponse(
      textValue: map['textValue'] as String,
      timestampValue: map['timestampValue'] as String,
    );
  }
}

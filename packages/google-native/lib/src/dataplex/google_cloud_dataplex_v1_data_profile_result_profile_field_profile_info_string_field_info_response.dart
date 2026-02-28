// ignore_for_file: unused_element, unnecessary_cast

/// The profile information for a string type field.
class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfoResponse {
  /// Average length of non-null values in the scanned data.
  final double averageLength;

  /// Maximum length of non-null values in the scanned data.
  final String maxLength;

  /// Minimum length of non-null values in the scanned data.
  final String minLength;

  /// Creates a new [GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfoResponse].
  /// [averageLength] Average length of non-null values in the scanned data.
  /// [maxLength] Maximum length of non-null values in the scanned data.
  /// [minLength] Minimum length of non-null values in the scanned data.
  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfoResponse({
    required this.averageLength,
    required this.maxLength,
    required this.minLength,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['averageLength'] = averageLength;
    map['maxLength'] = maxLength;
    map['minLength'] = minLength;
    return map;
  }

  factory GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfoResponse(
      averageLength: map['averageLength'] as double,
      maxLength: map['maxLength'] as String,
      minLength: map['minLength'] as String,
    );
  }
}

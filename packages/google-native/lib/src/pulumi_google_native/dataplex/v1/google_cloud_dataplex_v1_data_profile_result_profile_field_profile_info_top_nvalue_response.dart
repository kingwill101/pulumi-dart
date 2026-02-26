// ignore_for_file: unused_element, unnecessary_cast

/// Top N non-null values in the scanned data.
class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValueResponse {
  /// Count of the corresponding value in the scanned data.
  final String count;

  /// Ratio of the corresponding value in the field against the total number of rows in the scanned data.
  final double ratio;

  /// String value of a top N non-null value.
  final String value;

  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValueResponse({
    required this.count,
    required this.ratio,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['ratio'] = ratio;
    map['value'] = value;
    return map;
  }

  factory GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValueResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValueResponse(
      count: map['count'] as String,
      ratio: map['ratio'] as double,
      value: map['value'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// A data range denoted by a pair of start/end values of a field.
class GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse {
  /// Value that marks the end of the range.
  final String end;

  /// The field that contains values which monotonically increases over time (e.g. a timestamp column).
  final String field;

  /// Value that marks the start of the range.
  final String start;

  /// Creates a new [GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse].
  /// [end] Value that marks the end of the range.
  /// [field] The field that contains values which monotonically increases over time (e.g. a timestamp column).
  /// [start] Value that marks the start of the range.
  GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse({
    required this.end,
    required this.field,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['field'] = field;
    map['start'] = start;
    return map;
  }

  factory GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse(
      end: map['end'] as String,
      field: map['field'] as String,
      start: map['start'] as String,
    );
  }
}

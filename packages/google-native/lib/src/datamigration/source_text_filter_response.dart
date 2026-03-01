// ignore_for_file: unused_element, unnecessary_cast

/// Filter for text-based data types like varchar.
class SourceTextFilterResponse {
  /// Optional. The filter will match columns with length smaller than or equal to this number.
  final String sourceMaxLengthFilter;

  /// Optional. The filter will match columns with length greater than or equal to this number.
  final String sourceMinLengthFilter;

  /// Creates a new [SourceTextFilterResponse].
  /// [sourceMaxLengthFilter] Optional. The filter will match columns with length smaller than or equal to this number.
  /// [sourceMinLengthFilter] Optional. The filter will match columns with length greater than or equal to this number.
  SourceTextFilterResponse({
    required this.sourceMaxLengthFilter,
    required this.sourceMinLengthFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceMaxLengthFilter': sourceMaxLengthFilter,
      'sourceMinLengthFilter': sourceMinLengthFilter,
    };
  }

  factory SourceTextFilterResponse.fromMap(Map<String, dynamic> map) {
    return SourceTextFilterResponse(
      sourceMaxLengthFilter: map['sourceMaxLengthFilter'] as String,
      sourceMinLengthFilter: map['sourceMinLengthFilter'] as String,
    );
  }
}

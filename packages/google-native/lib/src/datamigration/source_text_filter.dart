// ignore_for_file: unused_element, unnecessary_cast

/// Filter for text-based data types like varchar.
class SourceTextFilter {
  /// Optional. The filter will match columns with length smaller than or equal to this number.
  final String? sourceMaxLengthFilter;

  /// Optional. The filter will match columns with length greater than or equal to this number.
  final String? sourceMinLengthFilter;

  /// Creates a new [SourceTextFilter].
  /// [sourceMaxLengthFilter] Optional. The filter will match columns with length smaller than or equal to this number.
  /// [sourceMinLengthFilter] Optional. The filter will match columns with length greater than or equal to this number.
  SourceTextFilter({this.sourceMaxLengthFilter, this.sourceMinLengthFilter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceMaxLengthFilter': ?sourceMaxLengthFilter,
      'sourceMinLengthFilter': ?sourceMinLengthFilter,
    };
  }

  factory SourceTextFilter.fromMap(Map<String, dynamic> map) {
    return SourceTextFilter(
      sourceMaxLengthFilter: map['sourceMaxLengthFilter'] == null
          ? null
          : map['sourceMaxLengthFilter'] as String,
      sourceMinLengthFilter: map['sourceMinLengthFilter'] == null
          ? null
          : map['sourceMinLengthFilter'] as String,
    );
  }
}

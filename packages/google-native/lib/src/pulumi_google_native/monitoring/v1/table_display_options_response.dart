// ignore_for_file: unused_element, unnecessary_cast

/// Table display options that can be reused.
class TableDisplayOptionsResponse {
  /// Optional. This field is unused and has been replaced by TimeSeriesTable.column_settings
  final List<String> shownColumns;

  TableDisplayOptionsResponse({
    required this.shownColumns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['shownColumns'] = shownColumns;
    return map;
  }

  factory TableDisplayOptionsResponse.fromMap(Map<String, dynamic> map) {
    return TableDisplayOptionsResponse(
      shownColumns: (map['shownColumns'] as List).cast<String>(),
    );
  }
}

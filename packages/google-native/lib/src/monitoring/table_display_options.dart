// ignore_for_file: unused_element, unnecessary_cast

/// Table display options that can be reused.
class TableDisplayOptions {
  /// Optional. This field is unused and has been replaced by TimeSeriesTable.column_settings
  final List<String>? shownColumns;

  /// Creates a new [TableDisplayOptions].
  /// [shownColumns] Optional. This field is unused and has been replaced by TimeSeriesTable.column_settings
  TableDisplayOptions({
    this.shownColumns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final shownColumnsValue = shownColumns;
    if (shownColumnsValue != null) {
      map['shownColumns'] = shownColumnsValue;
    }
    return map;
  }

  factory TableDisplayOptions.fromMap(Map<String, dynamic> map) {
    return TableDisplayOptions(
      shownColumns: map['shownColumns'] == null
          ? null
          : (map['shownColumns'] as List).cast<String>(),
    );
  }
}

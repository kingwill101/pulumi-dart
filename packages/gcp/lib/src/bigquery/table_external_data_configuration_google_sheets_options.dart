// ignore_for_file: unused_element, unnecessary_cast

class TableExternalDataConfigurationGoogleSheetsOptions {
  /// Range of a sheet to query from. Only used when
  /// non-empty. At least one of `range` or `skip_leading_rows` must be set.
  /// Typical format: "sheet_name!top_left_cell_id:bottom_right_cell_id"
  /// For example: "sheet1!A1:B20"
  final String? range;

  /// The number of rows at the top of the sheet
  /// that BigQuery will skip when reading the data. At least one of `range` or
  /// `skip_leading_rows` must be set.
  final int? skipLeadingRows;

  /// Creates a new [TableExternalDataConfigurationGoogleSheetsOptions].
  /// [range] Range of a sheet to query from. Only used when
  /// [skipLeadingRows] The number of rows at the top of the sheet
  TableExternalDataConfigurationGoogleSheetsOptions({
    this.range,
    this.skipLeadingRows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rangeValue = range;
    if (rangeValue != null) {
      map['range'] = rangeValue;
    }
    final skipLeadingRowsValue = skipLeadingRows;
    if (skipLeadingRowsValue != null) {
      map['skipLeadingRows'] = skipLeadingRowsValue;
    }
    return map;
  }

  factory TableExternalDataConfigurationGoogleSheetsOptions.fromMap(
      Map<String, dynamic> map) {
    return TableExternalDataConfigurationGoogleSheetsOptions(
      range: map['range'] == null ? null : map['range'] as String,
      skipLeadingRows:
          map['skipLeadingRows'] == null ? null : map['skipLeadingRows'] as int,
    );
  }
}

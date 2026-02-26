// ignore_for_file: unused_element, unnecessary_cast

class GoogleSheetsOptionsResponse {
  /// [Optional] Range of a sheet to query from. Only used when non-empty. Typical format: sheet_name!top_left_cell_id:bottom_right_cell_id For example: sheet1!A1:B20
  final String range;

  /// [Optional] The number of rows at the top of a sheet that BigQuery will skip when reading the data. The default value is 0. This property is useful if you have header rows that should be skipped. When autodetect is on, behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema.
  final String skipLeadingRows;

  GoogleSheetsOptionsResponse({
    required this.range,
    required this.skipLeadingRows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['range'] = range;
    map['skipLeadingRows'] = skipLeadingRows;
    return map;
  }

  factory GoogleSheetsOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleSheetsOptionsResponse(
      range: map['range'] as String,
      skipLeadingRows: map['skipLeadingRows'] as String,
    );
  }
}

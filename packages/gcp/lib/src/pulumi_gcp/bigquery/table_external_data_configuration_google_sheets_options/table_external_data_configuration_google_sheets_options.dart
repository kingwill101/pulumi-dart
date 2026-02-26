// ignore_for_file: unused_element, unnecessary_cast

class TableExternalDataConfigurationGoogleSheetsOptions {
  /// Range of a sheet to query from. Only used when
  /// non-empty. At least one of <span pulumi-lang-nodejs="`range`" pulumi-lang-dotnet="`Range`" pulumi-lang-go="`range`" pulumi-lang-python="`range`" pulumi-lang-yaml="`range`" pulumi-lang-java="`range`">`range`</span> or <span pulumi-lang-nodejs="`skipLeadingRows`" pulumi-lang-dotnet="`SkipLeadingRows`" pulumi-lang-go="`skipLeadingRows`" pulumi-lang-python="`skip_leading_rows`" pulumi-lang-yaml="`skipLeadingRows`" pulumi-lang-java="`skipLeadingRows`">`skip_leading_rows`</span> must be set.
  /// Typical format: "sheet_name!top_left_cell_id:bottom_right_cell_id"
  /// For example: "sheet1!A1:B20"
  final String? range;

  /// The number of rows at the top of the sheet
  /// that BigQuery will skip when reading the data. At least one of <span pulumi-lang-nodejs="`range`" pulumi-lang-dotnet="`Range`" pulumi-lang-go="`range`" pulumi-lang-python="`range`" pulumi-lang-yaml="`range`" pulumi-lang-java="`range`">`range`</span> or
  /// <span pulumi-lang-nodejs="`skipLeadingRows`" pulumi-lang-dotnet="`SkipLeadingRows`" pulumi-lang-go="`skipLeadingRows`" pulumi-lang-python="`skip_leading_rows`" pulumi-lang-yaml="`skipLeadingRows`" pulumi-lang-java="`skipLeadingRows`">`skip_leading_rows`</span> must be set.
  final int? skipLeadingRows;

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

// ignore_for_file: unused_element, unnecessary_cast

class GetTableExternalDataConfigurationGoogleSheetsOption {
  /// Range of a sheet to query from. Only used when non-empty. At least one of range or<span pulumi-lang-nodejs=" skipLeadingRows " pulumi-lang-dotnet=" SkipLeadingRows " pulumi-lang-go=" skipLeadingRows " pulumi-lang-python=" skip_leading_rows " pulumi-lang-yaml=" skipLeadingRows " pulumi-lang-java=" skipLeadingRows "> skip_leading_rows </span>must be set. Typical format: "sheet_name!top_left_cell_id:bottom_right_cell_id" For example: "sheet1!A1:B20
  final String range;

  /// The number of rows at the top of the sheet that BigQuery will skip when reading the data. At least one of range or<span pulumi-lang-nodejs=" skipLeadingRows " pulumi-lang-dotnet=" SkipLeadingRows " pulumi-lang-go=" skipLeadingRows " pulumi-lang-python=" skip_leading_rows " pulumi-lang-yaml=" skipLeadingRows " pulumi-lang-java=" skipLeadingRows "> skip_leading_rows </span>must be set.
  final int skipLeadingRows;

  GetTableExternalDataConfigurationGoogleSheetsOption({
    required this.range,
    required this.skipLeadingRows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['range'] = range;
    map['skipLeadingRows'] = skipLeadingRows;
    return map;
  }

  factory GetTableExternalDataConfigurationGoogleSheetsOption.fromMap(
      Map<String, dynamic> map) {
    return GetTableExternalDataConfigurationGoogleSheetsOption(
      range: map['range'] as String,
      skipLeadingRows: map['skipLeadingRows'] as int,
    );
  }
}

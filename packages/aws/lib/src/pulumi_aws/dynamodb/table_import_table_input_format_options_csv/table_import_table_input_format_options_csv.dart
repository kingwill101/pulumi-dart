// ignore_for_file: unused_element, unnecessary_cast

class TableImportTableInputFormatOptionsCsv {
  /// The delimiter used for separating items in the CSV file being imported.
  final String? delimiter;

  /// List of the headers used to specify a common header for all source CSV files being imported.
  final List<String>? headerLists;

  TableImportTableInputFormatOptionsCsv({
    this.delimiter,
    this.headerLists,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final delimiterValue = delimiter;
    if (delimiterValue != null) {
      map['delimiter'] = delimiterValue;
    }
    final headerListsValue = headerLists;
    if (headerListsValue != null) {
      map['headerLists'] = headerListsValue;
    }
    return map;
  }

  factory TableImportTableInputFormatOptionsCsv.fromMap(
      Map<String, dynamic> map) {
    return TableImportTableInputFormatOptionsCsv(
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      headerLists: map['headerLists'] == null
          ? null
          : (map['headerLists'] as List).cast<String>(),
    );
  }
}

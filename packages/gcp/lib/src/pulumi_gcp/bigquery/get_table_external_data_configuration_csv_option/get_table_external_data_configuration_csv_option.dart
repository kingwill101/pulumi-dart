// ignore_for_file: unused_element, unnecessary_cast

class GetTableExternalDataConfigurationCsvOption {
  /// Indicates if BigQuery should accept rows that are missing trailing optional columns.
  final bool allowJaggedRows;

  /// Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
  final bool allowQuotedNewlines;

  /// The character encoding of the data. The supported values are UTF-8 or ISO-8859-1.
  final String encoding;

  /// The separator for fields in a CSV file.
  final String fieldDelimiter;
  final String quote;

  /// The number of rows at the top of a CSV file that BigQuery will skip when reading the data.
  final int skipLeadingRows;

  /// Specifies how source columns are matched to the table schema. Valid values are POSITION (columns matched by position, assuming same ordering) or NAME (columns matched by name, reads header row and reorders columns to align with schema field names).
  final String sourceColumnMatch;

  GetTableExternalDataConfigurationCsvOption({
    required this.allowJaggedRows,
    required this.allowQuotedNewlines,
    required this.encoding,
    required this.fieldDelimiter,
    required this.quote,
    required this.skipLeadingRows,
    required this.sourceColumnMatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowJaggedRows'] = allowJaggedRows;
    map['allowQuotedNewlines'] = allowQuotedNewlines;
    map['encoding'] = encoding;
    map['fieldDelimiter'] = fieldDelimiter;
    map['quote'] = quote;
    map['skipLeadingRows'] = skipLeadingRows;
    map['sourceColumnMatch'] = sourceColumnMatch;
    return map;
  }

  factory GetTableExternalDataConfigurationCsvOption.fromMap(
      Map<String, dynamic> map) {
    return GetTableExternalDataConfigurationCsvOption(
      allowJaggedRows: map['allowJaggedRows'] as bool,
      allowQuotedNewlines: map['allowQuotedNewlines'] as bool,
      encoding: map['encoding'] as String,
      fieldDelimiter: map['fieldDelimiter'] as String,
      quote: map['quote'] as String,
      skipLeadingRows: map['skipLeadingRows'] as int,
      sourceColumnMatch: map['sourceColumnMatch'] as String,
    );
  }
}

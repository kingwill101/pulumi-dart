// ignore_for_file: unused_element, unnecessary_cast

class CsvOptions {
  /// [Optional] Indicates if BigQuery should accept rows that are missing trailing optional columns. If true, BigQuery treats missing trailing columns as null values. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false.
  final bool? allowJaggedRows;

  /// [Optional] Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
  final bool? allowQuotedNewlines;

  /// [Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties.
  final String? encoding;

  /// [Optional] The separator for fields in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence "\t" to specify a tab separator. The default value is a comma (',').
  final String? fieldDelimiter;

  /// [Optional] An custom string that will represent a NULL value in CSV import data.
  final String? nullMarker;

  /// [Optional] Preserves the embedded ASCII control characters (the first 32 characters in the ASCII-table, from '\x00' to '\x1F') when loading from CSV. Only applicable to CSV, ignored for other formats.
  final bool? preserveAsciiControlCharacters;

  /// [Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('"'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.
  final String? quote;

  /// [Optional] The number of rows at the top of a CSV file that BigQuery will skip when reading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped. When autodetect is on, the behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema.
  final String? skipLeadingRows;

  CsvOptions({
    this.allowJaggedRows,
    this.allowQuotedNewlines,
    this.encoding,
    this.fieldDelimiter,
    this.nullMarker,
    this.preserveAsciiControlCharacters,
    this.quote,
    this.skipLeadingRows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowJaggedRowsValue = allowJaggedRows;
    if (allowJaggedRowsValue != null) {
      map['allowJaggedRows'] = allowJaggedRowsValue;
    }
    final allowQuotedNewlinesValue = allowQuotedNewlines;
    if (allowQuotedNewlinesValue != null) {
      map['allowQuotedNewlines'] = allowQuotedNewlinesValue;
    }
    final encodingValue = encoding;
    if (encodingValue != null) {
      map['encoding'] = encodingValue;
    }
    final fieldDelimiterValue = fieldDelimiter;
    if (fieldDelimiterValue != null) {
      map['fieldDelimiter'] = fieldDelimiterValue;
    }
    final nullMarkerValue = nullMarker;
    if (nullMarkerValue != null) {
      map['nullMarker'] = nullMarkerValue;
    }
    final preserveAsciiControlCharactersValue = preserveAsciiControlCharacters;
    if (preserveAsciiControlCharactersValue != null) {
      map['preserveAsciiControlCharacters'] =
          preserveAsciiControlCharactersValue;
    }
    final quoteValue = quote;
    if (quoteValue != null) {
      map['quote'] = quoteValue;
    }
    final skipLeadingRowsValue = skipLeadingRows;
    if (skipLeadingRowsValue != null) {
      map['skipLeadingRows'] = skipLeadingRowsValue;
    }
    return map;
  }

  factory CsvOptions.fromMap(Map<String, dynamic> map) {
    return CsvOptions(
      allowJaggedRows: map['allowJaggedRows'] == null
          ? null
          : map['allowJaggedRows'] as bool,
      allowQuotedNewlines: map['allowQuotedNewlines'] == null
          ? null
          : map['allowQuotedNewlines'] as bool,
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      fieldDelimiter: map['fieldDelimiter'] == null
          ? null
          : map['fieldDelimiter'] as String,
      nullMarker:
          map['nullMarker'] == null ? null : map['nullMarker'] as String,
      preserveAsciiControlCharacters:
          map['preserveAsciiControlCharacters'] == null
              ? null
              : map['preserveAsciiControlCharacters'] as bool,
      quote: map['quote'] == null ? null : map['quote'] as String,
      skipLeadingRows: map['skipLeadingRows'] == null
          ? null
          : map['skipLeadingRows'] as String,
    );
  }
}

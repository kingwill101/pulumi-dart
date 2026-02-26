// ignore_for_file: unused_element, unnecessary_cast

/// Describes CSV and similar semi-structured data formats.
class GoogleCloudDataplexV1StorageFormatCsvOptions {
  /// Optional. The delimiter used to separate values. Defaults to ','.
  final String? delimiter;

  /// Optional. The character encoding of the data. Accepts "US-ASCII", "UTF-8", and "ISO-8859-1". Defaults to UTF-8 if unspecified.
  final String? encoding;

  /// Optional. The number of rows to interpret as header rows that should be skipped when reading data rows. Defaults to 0.
  final int? headerRows;

  /// Optional. The character used to quote column values. Accepts '"' (double quotation mark) or ''' (single quotation mark). Defaults to '"' (double quotation mark) if unspecified.
  final String? quote;

  GoogleCloudDataplexV1StorageFormatCsvOptions({
    this.delimiter,
    this.encoding,
    this.headerRows,
    this.quote,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final delimiterValue = delimiter;
    if (delimiterValue != null) {
      map['delimiter'] = delimiterValue;
    }
    final encodingValue = encoding;
    if (encodingValue != null) {
      map['encoding'] = encodingValue;
    }
    final headerRowsValue = headerRows;
    if (headerRowsValue != null) {
      map['headerRows'] = headerRowsValue;
    }
    final quoteValue = quote;
    if (quoteValue != null) {
      map['quote'] = quoteValue;
    }
    return map;
  }

  factory GoogleCloudDataplexV1StorageFormatCsvOptions.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1StorageFormatCsvOptions(
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      headerRows: map['headerRows'] == null ? null : map['headerRows'] as int,
      quote: map['quote'] == null ? null : map['quote'] as String,
    );
  }
}

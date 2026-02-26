// ignore_for_file: unused_element, unnecessary_cast

/// Describes CSV and similar semi-structured data formats.
class GoogleCloudDataplexV1StorageFormatCsvOptionsResponse {
  /// Optional. The delimiter used to separate values. Defaults to ','.
  final String delimiter;

  /// Optional. The character encoding of the data. Accepts "US-ASCII", "UTF-8", and "ISO-8859-1". Defaults to UTF-8 if unspecified.
  final String encoding;

  /// Optional. The number of rows to interpret as header rows that should be skipped when reading data rows. Defaults to 0.
  final int headerRows;

  /// Optional. The character used to quote column values. Accepts '"' (double quotation mark) or ''' (single quotation mark). Defaults to '"' (double quotation mark) if unspecified.
  final String quote;

  GoogleCloudDataplexV1StorageFormatCsvOptionsResponse({
    required this.delimiter,
    required this.encoding,
    required this.headerRows,
    required this.quote,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['delimiter'] = delimiter;
    map['encoding'] = encoding;
    map['headerRows'] = headerRows;
    map['quote'] = quote;
    return map;
  }

  factory GoogleCloudDataplexV1StorageFormatCsvOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1StorageFormatCsvOptionsResponse(
      delimiter: map['delimiter'] as String,
      encoding: map['encoding'] as String,
      headerRows: map['headerRows'] as int,
      quote: map['quote'] as String,
    );
  }
}

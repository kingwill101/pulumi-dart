// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataDiscoverySpecStorageConfigCsvOptions {
  /// The delimiter that is used to separate values. The default is `,` (comma).
  final String? delimiter;

  /// The character encoding of the data. The default is UTF-8.
  final String? encoding;

  /// The number of rows to interpret as header rows that should be skipped when reading data rows.
  final int? headerRows;

  /// The character used to quote column values. Accepts `"` (double quotation mark) or `'` (single quotation mark). If unspecified, defaults to `"` (double quotation mark).
  final String? quote;

  /// Whether to disable the inference of data types for CSV data. If true, all columns are registered as strings.
  final bool? typeInferenceDisabled;

  DatascanDataDiscoverySpecStorageConfigCsvOptions({
    this.delimiter,
    this.encoding,
    this.headerRows,
    this.quote,
    this.typeInferenceDisabled,
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
    final typeInferenceDisabledValue = typeInferenceDisabled;
    if (typeInferenceDisabledValue != null) {
      map['typeInferenceDisabled'] = typeInferenceDisabledValue;
    }
    return map;
  }

  factory DatascanDataDiscoverySpecStorageConfigCsvOptions.fromMap(
      Map<String, dynamic> map) {
    return DatascanDataDiscoverySpecStorageConfigCsvOptions(
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      headerRows: map['headerRows'] == null ? null : map['headerRows'] as int,
      quote: map['quote'] == null ? null : map['quote'] as String,
      typeInferenceDisabled: map['typeInferenceDisabled'] == null
          ? null
          : map['typeInferenceDisabled'] as bool,
    );
  }
}

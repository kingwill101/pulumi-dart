// ignore_for_file: unused_element, unnecessary_cast

class ZoneDiscoverySpecCsvOptions {
  /// Optional. The delimiter being used to separate values. This defaults to ','.
  final String? delimiter;

  /// Optional. Whether to disable the inference of data type for CSV data. If true, all columns will be registered as strings.
  final bool? disableTypeInference;

  /// Optional. The character encoding of the data. The default is UTF-8.
  final String? encoding;

  /// Optional. The number of rows to interpret as header rows that should be skipped when reading data rows.
  final int? headerRows;

  ZoneDiscoverySpecCsvOptions({
    this.delimiter,
    this.disableTypeInference,
    this.encoding,
    this.headerRows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final delimiterValue = delimiter;
    if (delimiterValue != null) {
      map['delimiter'] = delimiterValue;
    }
    final disableTypeInferenceValue = disableTypeInference;
    if (disableTypeInferenceValue != null) {
      map['disableTypeInference'] = disableTypeInferenceValue;
    }
    final encodingValue = encoding;
    if (encodingValue != null) {
      map['encoding'] = encodingValue;
    }
    final headerRowsValue = headerRows;
    if (headerRowsValue != null) {
      map['headerRows'] = headerRowsValue;
    }
    return map;
  }

  factory ZoneDiscoverySpecCsvOptions.fromMap(Map<String, dynamic> map) {
    return ZoneDiscoverySpecCsvOptions(
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      disableTypeInference: map['disableTypeInference'] == null
          ? null
          : map['disableTypeInference'] as bool,
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      headerRows: map['headerRows'] == null ? null : map['headerRows'] as int,
    );
  }
}

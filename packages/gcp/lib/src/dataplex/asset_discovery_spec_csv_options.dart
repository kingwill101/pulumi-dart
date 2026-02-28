// ignore_for_file: unused_element, unnecessary_cast


class AssetDiscoverySpecCsvOptions {
  /// Optional. The delimiter being used to separate values. This defaults to ','.
  final String? delimiter;
  /// Optional. Whether to disable the inference of data type for CSV data. If true, all columns will be registered as strings.
  final bool? disableTypeInference;
  /// Optional. The character encoding of the data. The default is UTF-8.
  final String? encoding;
  /// Optional. The number of rows to interpret as header rows that should be skipped when reading data rows.
  final int? headerRows;

  /// Creates a new [AssetDiscoverySpecCsvOptions].
  /// [delimiter] Optional. The delimiter being used to separate values. This defaults to ','.
  /// [disableTypeInference] Optional. Whether to disable the inference of data type for CSV data. If true, all columns will be registered as strings.
  /// [encoding] Optional. The character encoding of the data. The default is UTF-8.
  /// [headerRows] Optional. The number of rows to interpret as header rows that should be skipped when reading data rows.
  AssetDiscoverySpecCsvOptions({
    this.delimiter,
    this.disableTypeInference,
    this.encoding,
    this.headerRows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimiter': ?delimiter,
      'disableTypeInference': ?disableTypeInference,
      'encoding': ?encoding,
      'headerRows': ?headerRows,
    };
  }

  factory AssetDiscoverySpecCsvOptions.fromMap(Map<String, dynamic> map) {
    return AssetDiscoverySpecCsvOptions(
      delimiter: map['delimiter'] == null ? null : map['delimiter'] as String,
      disableTypeInference: map['disableTypeInference'] == null ? null : map['disableTypeInference'] as bool,
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      headerRows: map['headerRows'] == null ? null : map['headerRows'] as int,
    );
  }
}


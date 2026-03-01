// ignore_for_file: unused_element, unnecessary_cast

/// Describe CSV and similar semi-structured data formats.
class GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptionsResponse {
  /// Optional. The delimiter being used to separate values. This defaults to ','.
  final String delimiter;

  /// Optional. Whether to disable the inference of data type for CSV data. If true, all columns will be registered as strings.
  final bool disableTypeInference;

  /// Optional. The character encoding of the data. The default is UTF-8.
  final String encoding;

  /// Optional. The number of rows to interpret as header rows that should be skipped when reading data rows.
  final int headerRows;

  /// Creates a new [GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptionsResponse].
  /// [delimiter] Optional. The delimiter being used to separate values. This defaults to ','.
  /// [disableTypeInference] Optional. Whether to disable the inference of data type for CSV data. If true, all columns will be registered as strings.
  /// [encoding] Optional. The character encoding of the data. The default is UTF-8.
  /// [headerRows] Optional. The number of rows to interpret as header rows that should be skipped when reading data rows.
  GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptionsResponse({
    required this.delimiter,
    required this.disableTypeInference,
    required this.encoding,
    required this.headerRows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimiter': delimiter,
      'disableTypeInference': disableTypeInference,
      'encoding': encoding,
      'headerRows': headerRows,
    };
  }

  factory GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptionsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptionsResponse(
      delimiter: map['delimiter'] as String,
      disableTypeInference: map['disableTypeInference'] as bool,
      encoding: map['encoding'] as String,
      headerRows: map['headerRows'] as int,
    );
  }
}

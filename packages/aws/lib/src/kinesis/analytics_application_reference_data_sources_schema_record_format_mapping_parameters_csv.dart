// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv {
  /// The Column Delimiter.
  final String recordColumnDelimiter;

  /// The Row Delimiter.
  final String recordRowDelimiter;

  /// Creates a new [AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv].
  /// [recordColumnDelimiter] The Column Delimiter.
  /// [recordRowDelimiter] The Row Delimiter.
  AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recordColumnDelimiter'] = recordColumnDelimiter;
    map['recordRowDelimiter'] = recordRowDelimiter;
    return map;
  }

  factory AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv(
      recordColumnDelimiter: map['recordColumnDelimiter'] as String,
      recordRowDelimiter: map['recordRowDelimiter'] as String,
    );
  }
}

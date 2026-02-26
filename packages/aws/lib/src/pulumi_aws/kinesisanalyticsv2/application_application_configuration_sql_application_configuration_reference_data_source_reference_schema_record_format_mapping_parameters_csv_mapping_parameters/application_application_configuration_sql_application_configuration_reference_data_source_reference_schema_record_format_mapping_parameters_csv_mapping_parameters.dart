// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters {
  /// The column delimiter. For example, in a CSV format, a comma (`,`) is the typical column delimiter.
  final String recordColumnDelimiter;

  /// The row delimiter. For example, in a CSV format, `\n` is the typical row delimiter.
  final String recordRowDelimiter;

  ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recordColumnDelimiter'] = recordColumnDelimiter;
    map['recordRowDelimiter'] = recordRowDelimiter;
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters(
      recordColumnDelimiter: map['recordColumnDelimiter'] as String,
      recordRowDelimiter: map['recordRowDelimiter'] as String,
    );
  }
}

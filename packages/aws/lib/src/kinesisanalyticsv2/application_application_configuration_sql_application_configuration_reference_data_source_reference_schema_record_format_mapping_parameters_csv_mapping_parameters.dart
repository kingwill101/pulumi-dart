// ignore_for_file: unused_element, unnecessary_cast


class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters {
  /// The column delimiter. For example, in a CSV format, a comma (`,`) is the typical column delimiter.
  final String recordColumnDelimiter;
  /// The row delimiter. For example, in a CSV format, `\n` is the typical row delimiter.
  final String recordRowDelimiter;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters].
  /// [recordColumnDelimiter] The column delimiter. For example, in a CSV format, a comma (`,`) is the typical column delimiter.
  /// [recordRowDelimiter] The row delimiter. For example, in a CSV format, `\n` is the typical row delimiter.
  ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordColumnDelimiter': recordColumnDelimiter,
      'recordRowDelimiter': recordRowDelimiter,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters(
      recordColumnDelimiter: map['recordColumnDelimiter'] as String,
      recordRowDelimiter: map['recordRowDelimiter'] as String,
    );
  }
}


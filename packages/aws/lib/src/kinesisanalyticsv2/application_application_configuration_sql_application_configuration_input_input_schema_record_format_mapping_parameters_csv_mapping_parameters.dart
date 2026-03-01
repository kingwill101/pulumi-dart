// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters {
  /// The column delimiter. For example, in a CSV format, a comma (`,`) is the typical column delimiter.
  final String recordColumnDelimiter;

  /// The row delimiter. For example, in a CSV format, `\n` is the typical row delimiter.
  final String recordRowDelimiter;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters].
  /// [recordColumnDelimiter] The column delimiter. For example, in a CSV format, a comma (`,`) is the typical column delimiter.
  /// [recordRowDelimiter] The row delimiter. For example, in a CSV format, `\n` is the typical row delimiter.
  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordColumnDelimiter': recordColumnDelimiter,
      'recordRowDelimiter': recordRowDelimiter,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters(
      recordColumnDelimiter: map['recordColumnDelimiter'] as String,
      recordRowDelimiter: map['recordRowDelimiter'] as String,
    );
  }
}

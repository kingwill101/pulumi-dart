// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters {
  /// The column delimiter. For example, in a CSV format, a comma (`,`) is the typical column delimiter.
  final String recordColumnDelimiter;

  /// The row delimiter. For example, in a CSV format, `\n` is the typical row delimiter.
  final String recordRowDelimiter;

  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recordColumnDelimiter'] = recordColumnDelimiter;
    map['recordRowDelimiter'] = recordRowDelimiter;
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters(
      recordColumnDelimiter: map['recordColumnDelimiter'] as String,
      recordRowDelimiter: map['recordRowDelimiter'] as String,
    );
  }
}

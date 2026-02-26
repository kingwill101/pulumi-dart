// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters {
  /// The path to the top-level parent that contains the records.
  final String recordRowPath;

  ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters({
    required this.recordRowPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recordRowPath'] = recordRowPath;
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters(
      recordRowPath: map['recordRowPath'] as String,
    );
  }
}

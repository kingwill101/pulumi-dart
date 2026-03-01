// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters {
  /// The path to the top-level parent that contains the records.
  final String recordRowPath;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters].
  /// [recordRowPath] The path to the top-level parent that contains the records.
  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters({
    required this.recordRowPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'recordRowPath': recordRowPath};
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters(
      recordRowPath: map['recordRowPath'] as String,
    );
  }
}

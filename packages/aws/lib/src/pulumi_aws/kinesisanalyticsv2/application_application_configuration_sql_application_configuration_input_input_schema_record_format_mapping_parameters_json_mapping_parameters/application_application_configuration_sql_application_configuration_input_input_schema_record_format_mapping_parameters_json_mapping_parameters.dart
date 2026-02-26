// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters {
  /// The path to the top-level parent that contains the records.
  final String recordRowPath;

  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters({
    required this.recordRowPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recordRowPath'] = recordRowPath;
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters(
      recordRowPath: map['recordRowPath'] as String,
    );
  }
}

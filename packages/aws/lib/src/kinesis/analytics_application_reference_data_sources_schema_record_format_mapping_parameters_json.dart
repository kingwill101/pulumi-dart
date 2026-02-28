// ignore_for_file: unused_element, unnecessary_cast


class AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson {
  /// Path to the top-level parent that contains the records.
  final String recordRowPath;

  /// Creates a new [AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson].
  /// [recordRowPath] Path to the top-level parent that contains the records.
  AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson({
    required this.recordRowPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordRowPath': recordRowPath,
    };
  }

  factory AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson(
      recordRowPath: map['recordRowPath'] as String,
    );
  }
}


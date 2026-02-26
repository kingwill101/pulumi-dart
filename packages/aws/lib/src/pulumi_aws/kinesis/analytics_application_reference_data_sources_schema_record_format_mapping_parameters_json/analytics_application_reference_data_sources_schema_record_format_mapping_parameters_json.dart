// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson {
  /// Path to the top-level parent that contains the records.
  final String recordRowPath;

  AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson({
    required this.recordRowPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recordRowPath'] = recordRowPath;
    return map;
  }

  factory AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson(
      recordRowPath: map['recordRowPath'] as String,
    );
  }
}

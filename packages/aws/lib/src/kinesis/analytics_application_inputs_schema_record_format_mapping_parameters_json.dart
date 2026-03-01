// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson {
  /// Path to the top-level parent that contains the records.
  final String recordRowPath;

  /// Creates a new [AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson].
  /// [recordRowPath] Path to the top-level parent that contains the records.
  AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson({
    required this.recordRowPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'recordRowPath': recordRowPath};
  }

  factory AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson.fromMap(
    Map<String, dynamic> map,
  ) {
    return AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson(
      recordRowPath: map['recordRowPath'] as String,
    );
  }
}

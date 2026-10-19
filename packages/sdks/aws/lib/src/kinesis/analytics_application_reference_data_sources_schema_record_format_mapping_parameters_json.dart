// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson {
  final pulumi.Input<String> recordRowPath;

  /// Creates a new [AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson].
  /// [recordRowPath] Required.
  const AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson({
    required this.recordRowPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordRowPath': recordRowPath,
    };
  }

  factory AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson(
      recordRowPath: pulumi.Input.fromValue(map['recordRowPath'] as String),
    );
  }
}

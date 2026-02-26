// ignore_for_file: unused_element, unnecessary_cast

import '../analytics_application_reference_data_sources_s3/analytics_application_reference_data_sources_s3.dart';
import '../analytics_application_reference_data_sources_schema/analytics_application_reference_data_sources_schema.dart';

class AnalyticsApplicationReferenceDataSources {
  /// The ARN of the Kinesis Analytics Application.
  final String? id;

  /// The S3 configuration for the reference data source. See S3 Reference below for more details.
  final AnalyticsApplicationReferenceDataSourcesS3 s3;

  /// The Schema format of the data in the streaming source. See Source Schema below for more details.
  final AnalyticsApplicationReferenceDataSourcesSchema schema;

  /// The in-application Table Name.
  final String tableName;

  AnalyticsApplicationReferenceDataSources({
    this.id,
    required this.s3,
    required this.schema,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    map['s3'] = s3.toMap();
    map['schema'] = schema.toMap();
    map['tableName'] = tableName;
    return map;
  }

  factory AnalyticsApplicationReferenceDataSources.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSources(
      id: map['id'] == null ? null : map['id'] as String,
      s3: AnalyticsApplicationReferenceDataSourcesS3.fromMap(
          (map['s3'] as Map).cast<String, dynamic>()),
      schema: AnalyticsApplicationReferenceDataSourcesSchema.fromMap(
          (map['schema'] as Map).cast<String, dynamic>()),
      tableName: map['tableName'] as String,
    );
  }
}

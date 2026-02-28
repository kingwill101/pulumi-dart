// ignore_for_file: unused_element, unnecessary_cast

import 'analytics_application_reference_data_sources_s3.dart';
import 'analytics_application_reference_data_sources_schema.dart';

class AnalyticsApplicationReferenceDataSources {
  /// The ARN of the Kinesis Analytics Application.
  final String? id;
  /// The S3 configuration for the reference data source. See S3 Reference below for more details.
  final AnalyticsApplicationReferenceDataSourcesS3 s3;
  /// The Schema format of the data in the streaming source. See Source Schema below for more details.
  final AnalyticsApplicationReferenceDataSourcesSchema schema;
  /// The in-application Table Name.
  final String tableName;

  /// Creates a new [AnalyticsApplicationReferenceDataSources].
  /// [id] The ARN of the Kinesis Analytics Application.
  /// [s3] The S3 configuration for the reference data source. See S3 Reference below for more details.
  /// [schema] The Schema format of the data in the streaming source. See Source Schema below for more details.
  /// [tableName] The in-application Table Name.
  AnalyticsApplicationReferenceDataSources({
    this.id,
    required this.s3,
    required this.schema,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      's3': s3.toMap(),
      'schema': schema.toMap(),
      'tableName': tableName,
    };
  }

  factory AnalyticsApplicationReferenceDataSources.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSources(
      id: map['id'] == null ? null : map['id'] as String,
      s3: AnalyticsApplicationReferenceDataSourcesS3.fromMap((map['s3'] as Map).cast<String, dynamic>()),
      schema: AnalyticsApplicationReferenceDataSourcesSchema.fromMap((map['schema'] as Map).cast<String, dynamic>()),
      tableName: map['tableName'] as String,
    );
  }
}


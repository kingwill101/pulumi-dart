// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_reference_data_sources_s3.dart';
import 'analytics_application_reference_data_sources_schema.dart';

class AnalyticsApplicationReferenceDataSources {
  /// ARN of the Kinesis Analytics Application.
  final pulumi.Input<String?>? id;
  /// S3 configuration for the reference data source. See `reference_data_sources.s3` Block below for details.
  final pulumi.Input<AnalyticsApplicationReferenceDataSourcesS3> s3;
  /// Schema format of the data in the streaming source. See `reference_data_sources.schema` Block below for details.
  final pulumi.Input<AnalyticsApplicationReferenceDataSourcesSchema> schema;
  /// In-application Table Name.
  final pulumi.Input<String> tableName;

  /// Creates a new [AnalyticsApplicationReferenceDataSources].
  /// [id] ARN of the Kinesis Analytics Application.
  /// [s3] S3 configuration for the reference data source. See `reference_data_sources.s3` Block below for details.
  /// [schema] Schema format of the data in the streaming source. See `reference_data_sources.schema` Block below for details.
  /// [tableName] In-application Table Name.
  const AnalyticsApplicationReferenceDataSources({
    this.id,
    required this.s3,
    required this.schema,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      's3': pulumi.Input.mapInputValue<AnalyticsApplicationReferenceDataSourcesS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
      'schema': pulumi.Input.mapInputValue<AnalyticsApplicationReferenceDataSourcesSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'tableName': tableName,
    };
  }

  factory AnalyticsApplicationReferenceDataSources.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSources(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3: pulumi.Input.fromValue(AnalyticsApplicationReferenceDataSourcesS3.fromMap((map['s3']! as Map).cast<String, dynamic>())),
      schema: pulumi.Input.fromValue(AnalyticsApplicationReferenceDataSourcesSchema.fromMap((map['schema']! as Map).cast<String, dynamic>())),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}

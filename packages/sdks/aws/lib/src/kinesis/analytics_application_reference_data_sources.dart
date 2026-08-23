// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_reference_data_sources_s3.dart';
import 'analytics_application_reference_data_sources_schema.dart';

class AnalyticsApplicationReferenceDataSources {
  /// The ARN of the Kinesis Analytics Application.
  final pulumi.Input<String>? id;
  /// The S3 configuration for the reference data source. See S3 Reference below for more details.
  final pulumi.Input<AnalyticsApplicationReferenceDataSourcesS3> s3;
  /// The Schema format of the data in the streaming source. See Source Schema below for more details.
  final pulumi.Input<AnalyticsApplicationReferenceDataSourcesSchema> schema;
  /// The in-application Table Name.
  final pulumi.Input<String> tableName;

  /// Creates a new [AnalyticsApplicationReferenceDataSources].
  /// [id] The ARN of the Kinesis Analytics Application.
  /// [s3] The S3 configuration for the reference data source. See S3 Reference below for more details.
  /// [schema] The Schema format of the data in the streaming source. See Source Schema below for more details.
  /// [tableName] The in-application Table Name.
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

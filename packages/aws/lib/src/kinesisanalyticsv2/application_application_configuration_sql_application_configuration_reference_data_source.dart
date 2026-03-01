// ignore_for_file: unused_element, unnecessary_cast

import 'application_application_configuration_sql_application_configuration_reference_data_source_reference_schema.dart';
import 'application_application_configuration_sql_application_configuration_reference_data_source_s3_reference_data_source.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource {
  final String? referenceId;

  /// Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchema
  referenceSchema;

  /// Identifies the S3 bucket and object that contains the reference data.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource
  s3ReferenceDataSource;

  /// The name of the in-application table to create.
  final String tableName;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource].
  /// [referenceId] Optional.
  /// [referenceSchema] Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.
  /// [s3ReferenceDataSource] Identifies the S3 bucket and object that contains the reference data.
  /// [tableName] The name of the in-application table to create.
  ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource({
    this.referenceId,
    required this.referenceSchema,
    required this.s3ReferenceDataSource,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceId': ?referenceId,
      'referenceSchema': referenceSchema.toMap(),
      's3ReferenceDataSource': s3ReferenceDataSource.toMap(),
      'tableName': tableName,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource(
      referenceId: map['referenceId'] == null
          ? null
          : map['referenceId'] as String,
      referenceSchema:
          ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchema.fromMap(
            (map['referenceSchema'] as Map).cast<String, dynamic>(),
          ),
      s3ReferenceDataSource:
          ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource.fromMap(
            (map['s3ReferenceDataSource'] as Map).cast<String, dynamic>(),
          ),
      tableName: map['tableName'] as String,
    );
  }
}

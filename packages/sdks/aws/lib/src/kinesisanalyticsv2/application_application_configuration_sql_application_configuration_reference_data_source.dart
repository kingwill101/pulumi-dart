// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_sql_application_configuration_reference_data_source_reference_schema.dart';
import 'application_application_configuration_sql_application_configuration_reference_data_source_s3_reference_data_source.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource {
  final pulumi.Input<String>? referenceId;
  /// Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchema> referenceSchema;
  /// Identifies the S3 bucket and object that contains the reference data.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource> s3ReferenceDataSource;
  /// The name of the in-application table to create.
  final pulumi.Input<String> tableName;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource].
  /// [referenceId] Optional.
  /// [referenceSchema] Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.
  /// [s3ReferenceDataSource] Identifies the S3 bucket and object that contains the reference data.
  /// [tableName] The name of the in-application table to create.
  const ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource({
    this.referenceId,
    required this.referenceSchema,
    required this.s3ReferenceDataSource,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceId': ?referenceId,
      'referenceSchema': pulumi.Input.mapInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchema, Map<String, dynamic>>(referenceSchema, (value) => value.toMap()),
      's3ReferenceDataSource': pulumi.Input.mapInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource, Map<String, dynamic>>(s3ReferenceDataSource, (value) => value.toMap()),
      'tableName': tableName,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource(
      referenceId: (() { final guardedValue = map['referenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceSchema: pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchema.fromMap((map['referenceSchema']! as Map).cast<String, dynamic>())),
      s3ReferenceDataSource: pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource.fromMap((map['s3ReferenceDataSource']! as Map).cast<String, dynamic>())),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}


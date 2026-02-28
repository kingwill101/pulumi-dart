// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_sql_application_configuration_reference_data_source_reference_schema_record_column.dart';
import 'application_application_configuration_sql_application_configuration_reference_data_source_reference_schema_record_format.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchema {
  /// Describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream.
  final List<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn> recordColumns;
  /// Specifies the encoding of the records in the streaming source. For example, `UTF-8`.
  final String? recordEncoding;
  /// Specifies the format of the records on the streaming source.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormat recordFormat;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchema].
  /// [recordColumns] Describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream.
  /// [recordEncoding] Specifies the encoding of the records in the streaming source. For example, `UTF-8`.
  /// [recordFormat] Specifies the format of the records on the streaming source.
  ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchema({
    required this.recordColumns,
    this.recordEncoding,
    required this.recordFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordColumns': pulumi.Input.encodeList<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn, Map<String, dynamic>>(recordColumns, (value) => value.toMap()),
      'recordEncoding': ?recordEncoding,
      'recordFormat': recordFormat.toMap(),
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchema.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchema(
      recordColumns: pulumi.Input.decodeList<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn>(map['recordColumns'], (value) => ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn.fromMap((value as Map).cast<String, dynamic>())),
      recordEncoding: map['recordEncoding'] == null ? null : map['recordEncoding'] as String,
      recordFormat: ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormat.fromMap((map['recordFormat'] as Map).cast<String, dynamic>()),
    );
  }
}


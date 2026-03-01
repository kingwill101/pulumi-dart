// ignore_for_file: unused_element, unnecessary_cast

import 'application_application_configuration_sql_application_configuration_reference_data_source_reference_schema_record_format_mapping_parameters.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormat {
  /// Provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters
  mappingParameters;

  /// The type of record format. Valid values: `CSV`, `JSON`.
  final String recordFormatType;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormat].
  /// [mappingParameters] Provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.
  /// [recordFormatType] The type of record format. Valid values: `CSV`, `JSON`.
  ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormat({
    required this.mappingParameters,
    required this.recordFormatType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mappingParameters': mappingParameters.toMap(),
      'recordFormatType': recordFormatType,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormat.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormat(
      mappingParameters:
          ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters.fromMap(
            (map['mappingParameters'] as Map).cast<String, dynamic>(),
          ),
      recordFormatType: map['recordFormatType'] as String,
    );
  }
}

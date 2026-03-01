// ignore_for_file: unused_element, unnecessary_cast

import 'application_application_configuration_sql_application_configuration_reference_data_source_reference_schema_record_format_mapping_parameters_csv_mapping_parameters.dart';
import 'application_application_configuration_sql_application_configuration_reference_data_source_reference_schema_record_format_mapping_parameters_json_mapping_parameters.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters {
  /// Provides additional mapping information when the record format uses delimiters (for example, CSV).
  final ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters?
  csvMappingParameters;

  /// Provides additional mapping information when JSON is the record format on the streaming source.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters?
  jsonMappingParameters;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters].
  /// [csvMappingParameters] Provides additional mapping information when the record format uses delimiters (for example, CSV).
  /// [jsonMappingParameters] Provides additional mapping information when JSON is the record format on the streaming source.
  ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters({
    this.csvMappingParameters,
    this.jsonMappingParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvMappingParameters': ?csvMappingParameters == null
          ? null
          : csvMappingParameters!.toMap(),
      'jsonMappingParameters': ?jsonMappingParameters == null
          ? null
          : jsonMappingParameters!.toMap(),
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters(
      csvMappingParameters: map['csvMappingParameters'] == null
          ? null
          : ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters.fromMap(
              (map['csvMappingParameters'] as Map).cast<String, dynamic>(),
            ),
      jsonMappingParameters: map['jsonMappingParameters'] == null
          ? null
          : ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters.fromMap(
              (map['jsonMappingParameters'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

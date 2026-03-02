// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_sql_application_configuration_reference_data_source_reference_schema_record_format_mapping_parameters_csv_mapping_parameters.dart';
import 'application_application_configuration_sql_application_configuration_reference_data_source_reference_schema_record_format_mapping_parameters_json_mapping_parameters.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters {
  /// Provides additional mapping information when the record format uses delimiters (for example, CSV).
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters>? csvMappingParameters;
  /// Provides additional mapping information when JSON is the record format on the streaming source.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters>? jsonMappingParameters;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters].
  /// [csvMappingParameters] Provides additional mapping information when the record format uses delimiters (for example, CSV).
  /// [jsonMappingParameters] Provides additional mapping information when JSON is the record format on the streaming source.
  ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters({
    this.csvMappingParameters,
    this.jsonMappingParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvMappingParameters': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters, Map<String, dynamic>>(csvMappingParameters, (value) => value.toMap()),
      'jsonMappingParameters': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters, Map<String, dynamic>>(jsonMappingParameters, (value) => value.toMap()),
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters(
      csvMappingParameters: map['csvMappingParameters'] == null ? null : (ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters.fromMap((map['csvMappingParameters'] as Map).cast<String, dynamic>())).input(),
      jsonMappingParameters: map['jsonMappingParameters'] == null ? null : (ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters.fromMap((map['jsonMappingParameters'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_sql_application_configuration_reference_data_source_reference_schema_record_format_mapping_parameters_csv_mapping_parameters.dart';
import 'application_application_configuration_sql_application_configuration_reference_data_source_reference_schema_record_format_mapping_parameters_json_mapping_parameters.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters {
  /// Additional mapping information when the record format uses delimiters (for example, CSV). See `csvMappingParameters` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters?>? csvMappingParameters;
  /// Additional mapping information when JSON is the record format on the streaming source. See `jsonMappingParameters` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters?>? jsonMappingParameters;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters].
  /// [csvMappingParameters] Additional mapping information when the record format uses delimiters (for example, CSV). See `csvMappingParameters` Block below.
  /// [jsonMappingParameters] Additional mapping information when JSON is the record format on the streaming source. See `jsonMappingParameters` Block below.
  const ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters({
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
      csvMappingParameters: (() { final guardedValue = map['csvMappingParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jsonMappingParameters: (() { final guardedValue = map['jsonMappingParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

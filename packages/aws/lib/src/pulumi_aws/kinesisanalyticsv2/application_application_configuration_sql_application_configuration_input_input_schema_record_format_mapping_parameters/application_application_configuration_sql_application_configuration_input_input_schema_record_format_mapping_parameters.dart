// ignore_for_file: unused_element, unnecessary_cast

import '../application_application_configuration_sql_application_configuration_input_input_schema_record_format_mapping_parameters_csv_mapping_parameters/application_application_configuration_sql_application_configuration_input_input_schema_record_format_mapping_parameters_csv_mapping_parameters.dart';
import '../application_application_configuration_sql_application_configuration_input_input_schema_record_format_mapping_parameters_json_mapping_parameters/application_application_configuration_sql_application_configuration_input_input_schema_record_format_mapping_parameters_json_mapping_parameters.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters {
  /// Provides additional mapping information when the record format uses delimiters (for example, CSV).
  final ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters?
      csvMappingParameters;

  /// Provides additional mapping information when JSON is the record format on the streaming source.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters?
      jsonMappingParameters;

  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters({
    this.csvMappingParameters,
    this.jsonMappingParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final csvMappingParametersValue = csvMappingParameters;
    if (csvMappingParametersValue != null) {
      map['csvMappingParameters'] = csvMappingParametersValue.toMap();
    }
    final jsonMappingParametersValue = jsonMappingParameters;
    if (jsonMappingParametersValue != null) {
      map['jsonMappingParameters'] = jsonMappingParametersValue.toMap();
    }
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters(
      csvMappingParameters: map['csvMappingParameters'] == null
          ? null
          : ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters
              .fromMap(
                  (map['csvMappingParameters'] as Map).cast<String, dynamic>()),
      jsonMappingParameters: map['jsonMappingParameters'] == null
          ? null
          : ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters
              .fromMap((map['jsonMappingParameters'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}

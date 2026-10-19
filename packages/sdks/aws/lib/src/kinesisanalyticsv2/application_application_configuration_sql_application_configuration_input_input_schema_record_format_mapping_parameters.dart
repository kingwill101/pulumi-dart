// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_sql_application_configuration_input_input_schema_record_format_mapping_parameters_csv_mapping_parameters.dart';
import 'application_application_configuration_sql_application_configuration_input_input_schema_record_format_mapping_parameters_json_mapping_parameters.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters {
  /// Additional mapping information when the record format uses delimiters (for example, CSV). See `csvMappingParameters` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters?>? csvMappingParameters;
  /// Additional mapping information when JSON is the record format on the streaming source. See `jsonMappingParameters` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters?>? jsonMappingParameters;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters].
  /// [csvMappingParameters] Additional mapping information when the record format uses delimiters (for example, CSV). See `csvMappingParameters` Block below.
  /// [jsonMappingParameters] Additional mapping information when JSON is the record format on the streaming source. See `jsonMappingParameters` Block below.
  const ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters({
    this.csvMappingParameters,
    this.jsonMappingParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvMappingParameters': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters, Map<String, dynamic>>(csvMappingParameters, (value) => value.toMap()),
      'jsonMappingParameters': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters, Map<String, dynamic>>(jsonMappingParameters, (value) => value.toMap()),
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters(
      csvMappingParameters: (() { final guardedValue = map['csvMappingParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jsonMappingParameters: (() { final guardedValue = map['jsonMappingParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

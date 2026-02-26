// ignore_for_file: unused_element, unnecessary_cast

import '../application_application_configuration_sql_application_configuration_input_input_schema_record_format_mapping_parameters/application_application_configuration_sql_application_configuration_input_input_schema_record_format_mapping_parameters.dart';

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormat {
  /// Provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.
  final ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters
      mappingParameters;

  /// The type of record format. Valid values: `CSV`, `JSON`.
  final String recordFormatType;

  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormat({
    required this.mappingParameters,
    required this.recordFormatType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mappingParameters'] = mappingParameters.toMap();
    map['recordFormatType'] = recordFormatType;
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormat.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormat(
      mappingParameters:
          ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters
              .fromMap(
                  (map['mappingParameters'] as Map).cast<String, dynamic>()),
      recordFormatType: map['recordFormatType'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'analytics_application_inputs_schema_record_format_mapping_parameters_csv.dart';
import 'analytics_application_inputs_schema_record_format_mapping_parameters_json.dart';

class AnalyticsApplicationInputsSchemaRecordFormatMappingParameters {
  /// Mapping information when the record format uses delimiters.
  /// See CSV Mapping Parameters below for more details.
  final AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv? csv;

  /// Mapping information when JSON is the record format on the streaming source.
  /// See JSON Mapping Parameters below for more details.
  final AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson? json;

  /// Creates a new [AnalyticsApplicationInputsSchemaRecordFormatMappingParameters].
  /// [csv] Mapping information when the record format uses delimiters.
  /// [json] Mapping information when JSON is the record format on the streaming source.
  AnalyticsApplicationInputsSchemaRecordFormatMappingParameters({
    this.csv,
    this.json,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csv': ?csv == null ? null : csv!.toMap(),
      'json': ?json == null ? null : json!.toMap(),
    };
  }

  factory AnalyticsApplicationInputsSchemaRecordFormatMappingParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return AnalyticsApplicationInputsSchemaRecordFormatMappingParameters(
      csv: map['csv'] == null
          ? null
          : AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv.fromMap(
              (map['csv'] as Map).cast<String, dynamic>(),
            ),
      json: map['json'] == null
          ? null
          : AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson.fromMap(
              (map['json'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

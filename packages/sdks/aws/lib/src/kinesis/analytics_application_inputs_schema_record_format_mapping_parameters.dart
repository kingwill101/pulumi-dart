// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_inputs_schema_record_format_mapping_parameters_csv.dart';
import 'analytics_application_inputs_schema_record_format_mapping_parameters_json.dart';

class AnalyticsApplicationInputsSchemaRecordFormatMappingParameters {
  /// Mapping information when the record format uses delimiters.
  /// See CSV Mapping Parameters below for more details.
  final pulumi.Input<AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv?>? csv;
  /// Mapping information when JSON is the record format on the streaming source.
  /// See JSON Mapping Parameters below for more details.
  final pulumi.Input<AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson?>? json;

  /// Creates a new [AnalyticsApplicationInputsSchemaRecordFormatMappingParameters].
  /// [csv] Mapping information when the record format uses delimiters.
  /// [json] Mapping information when JSON is the record format on the streaming source.
  const AnalyticsApplicationInputsSchemaRecordFormatMappingParameters({
    this.csv,
    this.json,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csv': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv, Map<String, dynamic>>(csv, (value) => value.toMap()),
      'json': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson, Map<String, dynamic>>(json, (value) => value.toMap()),
    };
  }

  factory AnalyticsApplicationInputsSchemaRecordFormatMappingParameters.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsSchemaRecordFormatMappingParameters(
      csv: (() { final guardedValue = map['csv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      json: (() { final guardedValue = map['json']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

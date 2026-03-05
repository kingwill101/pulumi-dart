// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_reference_data_sources_schema_record_format_mapping_parameters_csv.dart';
import 'analytics_application_reference_data_sources_schema_record_format_mapping_parameters_json.dart';

class AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters {
  /// Mapping information when the record format uses delimiters.
  /// See CSV Mapping Parameters below for more details.
  final pulumi.Input<AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv>? csv;
  /// Mapping information when JSON is the record format on the streaming source.
  /// See JSON Mapping Parameters below for more details.
  final pulumi.Input<AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson>? json;

  /// Creates a new [AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters].
  /// [csv] Mapping information when the record format uses delimiters.
  /// [json] Mapping information when JSON is the record format on the streaming source.
  AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters({
    this.csv,
    this.json,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csv': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv, Map<String, dynamic>>(csv, (value) => value.toMap()),
      'json': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson, Map<String, dynamic>>(json, (value) => value.toMap()),
    };
  }

  factory AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters(
      csv: (() { final guardedValue = map['csv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      json: (() { final guardedValue = map['json']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


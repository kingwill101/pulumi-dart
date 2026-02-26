// ignore_for_file: unused_element, unnecessary_cast

import '../analytics_application_reference_data_sources_schema_record_format_mapping_parameters_csv/analytics_application_reference_data_sources_schema_record_format_mapping_parameters_csv.dart';
import '../analytics_application_reference_data_sources_schema_record_format_mapping_parameters_json/analytics_application_reference_data_sources_schema_record_format_mapping_parameters_json.dart';

class AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters {
  /// Mapping information when the record format uses delimiters.
  /// See CSV Mapping Parameters below for more details.
  final AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv?
      csv;

  /// Mapping information when JSON is the record format on the streaming source.
  /// See JSON Mapping Parameters below for more details.
  final AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson?
      json;

  AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters({
    this.csv,
    this.json,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final csvValue = csv;
    if (csvValue != null) {
      map['csv'] = csvValue.toMap();
    }
    final jsonValue = json;
    if (jsonValue != null) {
      map['json'] = jsonValue.toMap();
    }
    return map;
  }

  factory AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters(
      csv: map['csv'] == null
          ? null
          : AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv
              .fromMap((map['csv'] as Map).cast<String, dynamic>()),
      json: map['json'] == null
          ? null
          : AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersJson
              .fromMap((map['json'] as Map).cast<String, dynamic>()),
    );
  }
}

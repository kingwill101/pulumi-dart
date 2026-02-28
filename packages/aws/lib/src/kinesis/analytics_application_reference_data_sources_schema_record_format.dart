// ignore_for_file: unused_element, unnecessary_cast

import 'analytics_application_reference_data_sources_schema_record_format_mapping_parameters.dart';

class AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat {
  /// The Mapping Information for the record format.
  /// See Mapping Parameters below for more details.
  final AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters?
      mappingParameters;

  /// The type of Record Format. Can be `CSV` or `JSON`.
  final String? recordFormatType;

  /// Creates a new [AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat].
  /// [mappingParameters] The Mapping Information for the record format.
  /// [recordFormatType] The type of Record Format. Can be `CSV` or `JSON`.
  AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat({
    this.mappingParameters,
    this.recordFormatType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mappingParametersValue = mappingParameters;
    if (mappingParametersValue != null) {
      map['mappingParameters'] = mappingParametersValue.toMap();
    }
    final recordFormatTypeValue = recordFormatType;
    if (recordFormatTypeValue != null) {
      map['recordFormatType'] = recordFormatTypeValue;
    }
    return map;
  }

  factory AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat(
      mappingParameters: map['mappingParameters'] == null
          ? null
          : AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters
              .fromMap(
                  (map['mappingParameters'] as Map).cast<String, dynamic>()),
      recordFormatType: map['recordFormatType'] == null
          ? null
          : map['recordFormatType'] as String,
    );
  }
}

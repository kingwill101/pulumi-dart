// ignore_for_file: unused_element, unnecessary_cast

import '../analytics_application_inputs_schema_record_format_mapping_parameters/analytics_application_inputs_schema_record_format_mapping_parameters.dart';

class AnalyticsApplicationInputsSchemaRecordFormat {
  /// The Mapping Information for the record format.
  /// See Mapping Parameters below for more details.
  final AnalyticsApplicationInputsSchemaRecordFormatMappingParameters?
      mappingParameters;

  /// The type of Record Format. Can be `CSV` or `JSON`.
  final String? recordFormatType;

  AnalyticsApplicationInputsSchemaRecordFormat({
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

  factory AnalyticsApplicationInputsSchemaRecordFormat.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationInputsSchemaRecordFormat(
      mappingParameters: map['mappingParameters'] == null
          ? null
          : AnalyticsApplicationInputsSchemaRecordFormatMappingParameters
              .fromMap(
                  (map['mappingParameters'] as Map).cast<String, dynamic>()),
      recordFormatType: map['recordFormatType'] == null
          ? null
          : map['recordFormatType'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_reference_data_sources_schema_record_format_mapping_parameters.dart';

class AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat {
  /// The Mapping Information for the record format.
  /// See Mapping Parameters below for more details.
  final pulumi.Input<AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters?>? mappingParameters;
  /// The type of Record Format. Can be `CSV` or `JSON`.
  final pulumi.Input<String?>? recordFormatType;

  /// Creates a new [AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat].
  /// [mappingParameters] The Mapping Information for the record format.
  /// [recordFormatType] The type of Record Format. Can be `CSV` or `JSON`.
  const AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat({
    this.mappingParameters,
    this.recordFormatType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mappingParameters': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters, Map<String, dynamic>>(mappingParameters, (value) => value.toMap()),
      'recordFormatType': ?recordFormatType,
    };
  }

  factory AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSourcesSchemaRecordFormat(
      mappingParameters: (() { final guardedValue = map['mappingParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recordFormatType: (() { final guardedValue = map['recordFormatType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

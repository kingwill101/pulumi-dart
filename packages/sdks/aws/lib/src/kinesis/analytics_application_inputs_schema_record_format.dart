// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_inputs_schema_record_format_mapping_parameters.dart';

class AnalyticsApplicationInputsSchemaRecordFormat {
  /// The Mapping Information for the record format.
  /// See Mapping Parameters below for more details.
  final pulumi.Input<AnalyticsApplicationInputsSchemaRecordFormatMappingParameters>? mappingParameters;
  /// The type of Record Format. Can be `CSV` or `JSON`.
  final pulumi.Input<String>? recordFormatType;

  /// Creates a new [AnalyticsApplicationInputsSchemaRecordFormat].
  /// [mappingParameters] The Mapping Information for the record format.
  /// [recordFormatType] The type of Record Format. Can be `CSV` or `JSON`.
  AnalyticsApplicationInputsSchemaRecordFormat({
    this.mappingParameters,
    this.recordFormatType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mappingParameters': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationInputsSchemaRecordFormatMappingParameters, Map<String, dynamic>>(mappingParameters, (value) => value.toMap()),
      'recordFormatType': ?recordFormatType,
    };
  }

  factory AnalyticsApplicationInputsSchemaRecordFormat.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsSchemaRecordFormat(
      mappingParameters: map['mappingParameters'] == null ? null : ((AnalyticsApplicationInputsSchemaRecordFormatMappingParameters.fromMap((map['mappingParameters']! as Map).cast<String, dynamic>())).input()).input(),
      recordFormatType: map['recordFormatType'] == null ? null : ((map['recordFormatType'] as String).input()).input(),
    );
  }
}


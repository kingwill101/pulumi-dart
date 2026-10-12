// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_inputs_schema_record_format_mapping_parameters.dart';

class AnalyticsApplicationInputsSchemaRecordFormat {
  final pulumi.Input<AnalyticsApplicationInputsSchemaRecordFormatMappingParameters?>? mappingParameters;
  /// Type of Record Format of the input streaming source.
  final pulumi.Input<String?>? recordFormatType;

  /// Creates a new [AnalyticsApplicationInputsSchemaRecordFormat].
  /// [mappingParameters] Optional.
  /// [recordFormatType] Type of Record Format of the input streaming source.
  const AnalyticsApplicationInputsSchemaRecordFormat({
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
      mappingParameters: (() { final guardedValue = map['mappingParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationInputsSchemaRecordFormatMappingParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recordFormatType: (() { final guardedValue = map['recordFormatType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

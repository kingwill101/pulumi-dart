// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_inputs_schema_record_format_mapping_parameters_csv.dart';
import 'analytics_application_inputs_schema_record_format_mapping_parameters_json.dart';

class AnalyticsApplicationInputsSchemaRecordFormatMappingParameters {
  final pulumi.Input<AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv?>? csv;
  final pulumi.Input<AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJson?>? json;

  /// Creates a new [AnalyticsApplicationInputsSchemaRecordFormatMappingParameters].
  /// [csv] Optional.
  /// [json] Optional.
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

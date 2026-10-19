// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv {
  final pulumi.Input<String> recordColumnDelimiter;
  final pulumi.Input<String> recordRowDelimiter;

  /// Creates a new [AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv].
  /// [recordColumnDelimiter] Required.
  /// [recordRowDelimiter] Required.
  const AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordColumnDelimiter': recordColumnDelimiter,
      'recordRowDelimiter': recordRowDelimiter,
    };
  }

  factory AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv(
      recordColumnDelimiter: pulumi.Input.fromValue(map['recordColumnDelimiter'] as String),
      recordRowDelimiter: pulumi.Input.fromValue(map['recordRowDelimiter'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv {
  /// The Column Delimiter.
  final pulumi.Input<String> recordColumnDelimiter;
  /// The Row Delimiter.
  final pulumi.Input<String> recordRowDelimiter;

  /// Creates a new [AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv].
  /// [recordColumnDelimiter] The Column Delimiter.
  /// [recordRowDelimiter] The Row Delimiter.
  AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsv({
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
      recordColumnDelimiter: (map['recordColumnDelimiter'] as String).input(),
      recordRowDelimiter: (map['recordRowDelimiter'] as String).input(),
    );
  }
}


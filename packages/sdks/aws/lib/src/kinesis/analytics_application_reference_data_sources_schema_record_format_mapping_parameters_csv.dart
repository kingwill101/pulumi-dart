// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv {
  final pulumi.Input<String> recordColumnDelimiter;
  final pulumi.Input<String> recordRowDelimiter;

  /// Creates a new [AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv].
  /// [recordColumnDelimiter] Required.
  /// [recordRowDelimiter] Required.
  const AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordColumnDelimiter': recordColumnDelimiter,
      'recordRowDelimiter': recordRowDelimiter,
    };
  }

  factory AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv(
      recordColumnDelimiter: pulumi.Input.fromValue(map['recordColumnDelimiter'] as String),
      recordRowDelimiter: pulumi.Input.fromValue(map['recordRowDelimiter'] as String),
    );
  }
}

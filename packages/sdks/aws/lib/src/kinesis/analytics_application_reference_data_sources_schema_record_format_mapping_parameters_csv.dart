// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv {
  /// The Column Delimiter.
  final pulumi.Input<String> recordColumnDelimiter;
  /// The Row Delimiter.
  final pulumi.Input<String> recordRowDelimiter;

  /// Creates a new [AnalyticsApplicationReferenceDataSourcesSchemaRecordFormatMappingParametersCsv].
  /// [recordColumnDelimiter] The Column Delimiter.
  /// [recordRowDelimiter] The Row Delimiter.
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

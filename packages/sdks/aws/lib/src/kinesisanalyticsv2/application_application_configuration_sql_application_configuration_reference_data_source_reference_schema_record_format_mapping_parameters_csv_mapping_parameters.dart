// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters {
  /// Column delimiter. For example, in a CSV format, a comma (`,`) is the typical column delimiter.
  final pulumi.Input<String> recordColumnDelimiter;
  /// Row delimiter. For example, in a CSV format, `\n` is the typical row delimiter.
  final pulumi.Input<String> recordRowDelimiter;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters].
  /// [recordColumnDelimiter] Column delimiter. For example, in a CSV format, a comma (`,`) is the typical column delimiter.
  /// [recordRowDelimiter] Row delimiter. For example, in a CSV format, `\n` is the typical row delimiter.
  const ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordColumnDelimiter': recordColumnDelimiter,
      'recordRowDelimiter': recordRowDelimiter,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters(
      recordColumnDelimiter: pulumi.Input.fromValue(map['recordColumnDelimiter'] as String),
      recordRowDelimiter: pulumi.Input.fromValue(map['recordRowDelimiter'] as String),
    );
  }
}

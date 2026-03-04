// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters {
  /// The column delimiter. For example, in a CSV format, a comma (`,`) is the typical column delimiter.
  final pulumi.Input<String> recordColumnDelimiter;

  /// The row delimiter. For example, in a CSV format, `\n` is the typical row delimiter.
  final pulumi.Input<String> recordRowDelimiter;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters].
  /// [recordColumnDelimiter] The column delimiter. For example, in a CSV format, a comma (`,`) is the typical column delimiter.
  /// [recordRowDelimiter] The row delimiter. For example, in a CSV format, `\n` is the typical row delimiter.
  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordColumnDelimiter': recordColumnDelimiter,
      'recordRowDelimiter': recordRowDelimiter,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters(
      recordColumnDelimiter: pulumi.Input.fromValue(
        map['recordColumnDelimiter'] as String,
      ),
      recordRowDelimiter: pulumi.Input.fromValue(
        map['recordRowDelimiter'] as String,
      ),
    );
  }
}

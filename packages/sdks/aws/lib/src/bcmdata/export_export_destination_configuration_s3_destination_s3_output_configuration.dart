// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration {
  /// Compression type for the data export. Valid values `GZIP`, `PARQUET`.
  final pulumi.Input<String> compression;

  /// File format for the data export. Valid values `TEXT_OR_CSV` or `PARQUET`.
  final pulumi.Input<String> format;

  /// Output type for the data export. Valid value `CUSTOM`.
  final pulumi.Input<String> outputType;

  /// The rule to follow when generating a version of the data export file. You have the choice to overwrite the previous version or to be delivered in addition to the previous versions. Overwriting exports can save on Amazon S3 storage costs. Creating new export versions allows you to track the changes in cost and usage data over time. Valid values `CREATE_NEW_REPORT` or `OVERWRITE_REPORT`.
  final pulumi.Input<String> overwrite;

  /// Creates a new [ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration].
  /// [compression] Compression type for the data export. Valid values `GZIP`, `PARQUET`.
  /// [format] File format for the data export. Valid values `TEXT_OR_CSV` or `PARQUET`.
  /// [outputType] Output type for the data export. Valid value `CUSTOM`.
  /// [overwrite] The rule to follow when generating a version of the data export file. You have the choice to overwrite the previous version or to be delivered in addition to the previous versions. Overwriting exports can save on Amazon S3 storage costs. Creating new export versions allows you to track the changes in cost and usage data over time. Valid values `CREATE_NEW_REPORT` or `OVERWRITE_REPORT`.
  ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration({
    required this.compression,
    required this.format,
    required this.outputType,
    required this.overwrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': compression,
      'format': format,
      'outputType': outputType,
      'overwrite': overwrite,
    };
  }

  factory ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration(
      compression: pulumi.Input.fromValue(map['compression'] as String),
      format: pulumi.Input.fromValue(map['format'] as String),
      outputType: pulumi.Input.fromValue(map['outputType'] as String),
      overwrite: pulumi.Input.fromValue(map['overwrite'] as String),
    );
  }
}

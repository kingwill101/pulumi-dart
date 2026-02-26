// ignore_for_file: unused_element, unnecessary_cast

class ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration {
  /// Compression type for the data export. Valid values `GZIP`, `PARQUET`.
  final String compression;

  /// File format for the data export. Valid values `TEXT_OR_CSV` or `PARQUET`.
  final String format;

  /// Output type for the data export. Valid value `CUSTOM`.
  final String outputType;

  /// The rule to follow when generating a version of the data export file. You have the choice to overwrite the previous version or to be delivered in addition to the previous versions. Overwriting exports can save on Amazon S3 storage costs. Creating new export versions allows you to track the changes in cost and usage data over time. Valid values `CREATE_NEW_REPORT` or `OVERWRITE_REPORT`.
  final String overwrite;

  ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration({
    required this.compression,
    required this.format,
    required this.outputType,
    required this.overwrite,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compression'] = compression;
    map['format'] = format;
    map['outputType'] = outputType;
    map['overwrite'] = overwrite;
    return map;
  }

  factory ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration(
      compression: map['compression'] as String,
      format: map['format'] as String,
      outputType: map['outputType'] as String,
      overwrite: map['overwrite'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_export_destination_configuration_s3_destination_s3_output_configuration.dart';

class ExportExportDestinationConfigurationS3Destination {
  /// Name of the Amazon S3 bucket used as the destination of a data export file.
  final pulumi.Input<String> s3Bucket;
  /// Output configuration for the data export. See the `s3_output_configurations` argument reference below.
  final pulumi.Input<List<ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration>>? s3OutputConfigurations;
  /// S3 path prefix you want prepended to the name of your data export.
  final pulumi.Input<String> s3Prefix;
  /// S3 bucket region.
  final pulumi.Input<String> s3Region;

  /// Creates a new [ExportExportDestinationConfigurationS3Destination].
  /// [s3Bucket] Name of the Amazon S3 bucket used as the destination of a data export file.
  /// [s3OutputConfigurations] Output configuration for the data export. See the `s3_output_configurations` argument reference below.
  /// [s3Prefix] S3 path prefix you want prepended to the name of your data export.
  /// [s3Region] S3 bucket region.
  ExportExportDestinationConfigurationS3Destination({
    required this.s3Bucket,
    this.s3OutputConfigurations,
    required this.s3Prefix,
    required this.s3Region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Bucket': s3Bucket,
      's3OutputConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration>, List<Map<String, dynamic>>>(s3OutputConfigurations, (value) => pulumi.Input.encodeList<ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      's3Prefix': s3Prefix,
      's3Region': s3Region,
    };
  }

  factory ExportExportDestinationConfigurationS3Destination.fromMap(Map<String, dynamic> map) {
    return ExportExportDestinationConfigurationS3Destination(
      s3Bucket: pulumi.Input.fromValue(map['s3Bucket'] as String),
      s3OutputConfigurations: (() { final guardedValue = map['s3OutputConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration>(guardedValue, (value) => ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      s3Prefix: pulumi.Input.fromValue(map['s3Prefix'] as String),
      s3Region: pulumi.Input.fromValue(map['s3Region'] as String),
    );
  }
}


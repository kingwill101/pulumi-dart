// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../export_export_destination_configuration_s3_destination_s3_output_configuration/export_export_destination_configuration_s3_destination_s3_output_configuration.dart';

class ExportExportDestinationConfigurationS3Destination {
  /// Name of the Amazon S3 bucket used as the destination of a data export file.
  final String s3Bucket;

  /// Output configuration for the data export. See the <span pulumi-lang-nodejs="`s3OutputConfigurations`" pulumi-lang-dotnet="`S3OutputConfigurations`" pulumi-lang-go="`s3OutputConfigurations`" pulumi-lang-python="`s3_output_configurations`" pulumi-lang-yaml="`s3OutputConfigurations`" pulumi-lang-java="`s3OutputConfigurations`">`s3_output_configurations`</span> argument reference below.
  final List<
          ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration>?
      s3OutputConfigurations;

  /// S3 path prefix you want prepended to the name of your data export.
  final String s3Prefix;

  /// S3 bucket region.
  final String s3Region;

  ExportExportDestinationConfigurationS3Destination({
    required this.s3Bucket,
    this.s3OutputConfigurations,
    required this.s3Prefix,
    required this.s3Region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Bucket'] = s3Bucket;
    final s3OutputConfigurationsValue = s3OutputConfigurations;
    if (s3OutputConfigurationsValue != null) {
      map['s3OutputConfigurations'] = Input.encodeList<
          ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration,
          Map<String,
              dynamic>>(s3OutputConfigurationsValue, (value) => value.toMap());
    }
    map['s3Prefix'] = s3Prefix;
    map['s3Region'] = s3Region;
    return map;
  }

  factory ExportExportDestinationConfigurationS3Destination.fromMap(
      Map<String, dynamic> map) {
    return ExportExportDestinationConfigurationS3Destination(
      s3Bucket: map['s3Bucket'] as String,
      s3OutputConfigurations: map['s3OutputConfigurations'] == null
          ? null
          : Input.decodeList<
                  ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration>(
              map['s3OutputConfigurations'],
              (value) =>
                  ExportExportDestinationConfigurationS3DestinationS3OutputConfiguration
                      .fromMap((value as Map).cast<String, dynamic>())),
      s3Prefix: map['s3Prefix'] as String,
      s3Region: map['s3Region'] as String,
    );
  }
}

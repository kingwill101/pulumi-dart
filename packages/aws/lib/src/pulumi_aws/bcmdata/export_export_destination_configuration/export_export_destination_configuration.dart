// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../export_export_destination_configuration_s3_destination/export_export_destination_configuration_s3_destination.dart';

class ExportExportDestinationConfiguration {
  /// Object that describes the destination of the data exports file. See the <span pulumi-lang-nodejs="`s3Destination`" pulumi-lang-dotnet="`S3Destination`" pulumi-lang-go="`s3Destination`" pulumi-lang-python="`s3_destination`" pulumi-lang-yaml="`s3Destination`" pulumi-lang-java="`s3Destination`">`s3_destination`</span> argument reference below.
  final List<ExportExportDestinationConfigurationS3Destination>? s3Destinations;

  ExportExportDestinationConfiguration({
    this.s3Destinations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3DestinationsValue = s3Destinations;
    if (s3DestinationsValue != null) {
      map['s3Destinations'] = Input.encodeList<
          ExportExportDestinationConfigurationS3Destination,
          Map<String, dynamic>>(s3DestinationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ExportExportDestinationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ExportExportDestinationConfiguration(
      s3Destinations: map['s3Destinations'] == null
          ? null
          : Input.decodeList<ExportExportDestinationConfigurationS3Destination>(
              map['s3Destinations'],
              (value) =>
                  ExportExportDestinationConfigurationS3Destination.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}

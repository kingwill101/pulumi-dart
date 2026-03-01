// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_export_destination_configuration_s3_destination.dart';

class ExportExportDestinationConfiguration {
  /// Object that describes the destination of the data exports file. See the `s3_destination` argument reference below.
  final List<ExportExportDestinationConfigurationS3Destination>? s3Destinations;

  /// Creates a new [ExportExportDestinationConfiguration].
  /// [s3Destinations] Object that describes the destination of the data exports file. See the `s3_destination` argument reference below.
  ExportExportDestinationConfiguration({this.s3Destinations});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Destinations': ?s3Destinations == null
          ? null
          : pulumi.Input.encodeList<
              ExportExportDestinationConfigurationS3Destination,
              Map<String, dynamic>
            >(s3Destinations!, (value) => value.toMap()),
    };
  }

  factory ExportExportDestinationConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExportExportDestinationConfiguration(
      s3Destinations: map['s3Destinations'] == null
          ? null
          : pulumi.Input.decodeList<
              ExportExportDestinationConfigurationS3Destination
            >(
              map['s3Destinations'],
              (value) =>
                  ExportExportDestinationConfigurationS3Destination.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}

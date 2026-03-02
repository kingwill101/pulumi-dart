// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_group_export_config_s3_destination.dart';

class ReportGroupExportConfig {
  /// contains information about the S3 bucket where the run of a report is exported. see S3 Destination documented below.
  final pulumi.Input<ReportGroupExportConfigS3Destination>? s3Destination;
  /// The export configuration type. Valid values are `S3` and `NO_EXPORT`.
  final pulumi.Input<String> type;

  /// Creates a new [ReportGroupExportConfig].
  /// [s3Destination] contains information about the S3 bucket where the run of a report is exported. see S3 Destination documented below.
  /// [type] The export configuration type. Valid values are `S3` and `NO_EXPORT`.
  ReportGroupExportConfig({
    this.s3Destination,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Destination': ?pulumi.Input.mapOptionalInputValue<ReportGroupExportConfigS3Destination, Map<String, dynamic>>(s3Destination, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ReportGroupExportConfig.fromMap(Map<String, dynamic> map) {
    return ReportGroupExportConfig(
      s3Destination: map['s3Destination'] == null ? null : ((ReportGroupExportConfigS3Destination.fromMap((map['s3Destination']! as Map).cast<String, dynamic>())).input()).input(),
      type: (map['type'] as String).input(),
    );
  }
}


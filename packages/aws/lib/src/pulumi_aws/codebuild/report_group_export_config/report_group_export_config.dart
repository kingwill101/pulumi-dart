// ignore_for_file: unused_element, unnecessary_cast

import '../report_group_export_config_s3_destination/report_group_export_config_s3_destination.dart';

class ReportGroupExportConfig {
  /// contains information about the S3 bucket where the run of a report is exported. see S3 Destination documented below.
  final ReportGroupExportConfigS3Destination? s3Destination;

  /// The export configuration type. Valid values are `S3` and `NO_EXPORT`.
  final String type;

  ReportGroupExportConfig({
    this.s3Destination,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3DestinationValue = s3Destination;
    if (s3DestinationValue != null) {
      map['s3Destination'] = s3DestinationValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory ReportGroupExportConfig.fromMap(Map<String, dynamic> map) {
    return ReportGroupExportConfig(
      s3Destination: map['s3Destination'] == null
          ? null
          : ReportGroupExportConfigS3Destination.fromMap(
              (map['s3Destination'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

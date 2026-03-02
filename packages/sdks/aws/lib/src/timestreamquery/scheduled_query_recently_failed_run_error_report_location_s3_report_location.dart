// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation {
  /// S3 bucket name.
  final pulumi.Input<String>? bucketName;
  /// S3 key.
  final pulumi.Input<String>? objectKey;

  /// Creates a new [ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation].
  /// [bucketName] S3 bucket name.
  /// [objectKey] S3 key.
  ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation({
    this.bucketName,
    this.objectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'objectKey': ?objectKey,
    };
  }

  factory ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation(
      bucketName: map['bucketName'] == null ? null : (map['bucketName'] as String).input(),
      objectKey: map['objectKey'] == null ? null : (map['objectKey'] as String).input(),
    );
  }
}


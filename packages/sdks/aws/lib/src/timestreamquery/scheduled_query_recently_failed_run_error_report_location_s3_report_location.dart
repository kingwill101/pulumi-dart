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
  const ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation({
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
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectKey: (() { final guardedValue = map['objectKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


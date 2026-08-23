// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation {
  /// S3 bucket name.
  final pulumi.Input<String>? bucketName;
  /// S3 key.
  final pulumi.Input<String>? objectKey;

  /// Creates a new [ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation].
  /// [bucketName] S3 bucket name.
  /// [objectKey] S3 key.
  const ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation({
    this.bucketName,
    this.objectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'objectKey': ?objectKey,
    };
  }

  factory ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation(
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectKey: (() { final guardedValue = map['objectKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

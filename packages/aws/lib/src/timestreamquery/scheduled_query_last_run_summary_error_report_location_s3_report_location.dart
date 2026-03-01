// ignore_for_file: unused_element, unnecessary_cast

class ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation {
  /// S3 bucket name.
  final String? bucketName;

  /// S3 key.
  final String? objectKey;

  /// Creates a new [ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation].
  /// [bucketName] S3 bucket name.
  /// [objectKey] S3 key.
  ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation({
    this.bucketName,
    this.objectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'objectKey': ?objectKey,
    };
  }

  factory ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScheduledQueryLastRunSummaryErrorReportLocationS3ReportLocation(
      bucketName: map['bucketName'] == null
          ? null
          : map['bucketName'] as String,
      objectKey: map['objectKey'] == null ? null : map['objectKey'] as String,
    );
  }
}

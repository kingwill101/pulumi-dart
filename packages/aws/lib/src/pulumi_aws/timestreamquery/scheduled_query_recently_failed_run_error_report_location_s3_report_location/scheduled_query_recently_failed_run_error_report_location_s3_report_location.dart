// ignore_for_file: unused_element, unnecessary_cast

class ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation {
  /// S3 bucket name.
  final String? bucketName;

  /// S3 key.
  final String? objectKey;

  ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation({
    this.bucketName,
    this.objectKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketNameValue = bucketName;
    if (bucketNameValue != null) {
      map['bucketName'] = bucketNameValue;
    }
    final objectKeyValue = objectKey;
    if (objectKeyValue != null) {
      map['objectKey'] = objectKeyValue;
    }
    return map;
  }

  factory ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunErrorReportLocationS3ReportLocation(
      bucketName:
          map['bucketName'] == null ? null : map['bucketName'] as String,
      objectKey: map['objectKey'] == null ? null : map['objectKey'] as String,
    );
  }
}

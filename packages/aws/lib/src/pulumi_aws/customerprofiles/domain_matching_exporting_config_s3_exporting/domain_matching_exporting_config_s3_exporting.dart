// ignore_for_file: unused_element, unnecessary_cast

class DomainMatchingExportingConfigS3Exporting {
  /// The name of the S3 bucket where Identity Resolution Jobs write result files.
  final String s3BucketName;

  /// The S3 key name of the location where Identity Resolution Jobs write result files.
  final String? s3KeyName;

  DomainMatchingExportingConfigS3Exporting({
    required this.s3BucketName,
    this.s3KeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3BucketName'] = s3BucketName;
    final s3KeyNameValue = s3KeyName;
    if (s3KeyNameValue != null) {
      map['s3KeyName'] = s3KeyNameValue;
    }
    return map;
  }

  factory DomainMatchingExportingConfigS3Exporting.fromMap(
      Map<String, dynamic> map) {
    return DomainMatchingExportingConfigS3Exporting(
      s3BucketName: map['s3BucketName'] as String,
      s3KeyName: map['s3KeyName'] == null ? null : map['s3KeyName'] as String,
    );
  }
}

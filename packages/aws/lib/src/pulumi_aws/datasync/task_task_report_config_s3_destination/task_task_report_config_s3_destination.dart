// ignore_for_file: unused_element, unnecessary_cast

class TaskTaskReportConfigS3Destination {
  /// Specifies the Amazon Resource Name (ARN) of the IAM policy that allows DataSync to upload a task report to your S3 bucket.
  final String bucketAccessRoleArn;

  /// Specifies the ARN of the S3 bucket where DataSync uploads your report.
  final String s3BucketArn;

  /// Specifies a bucket prefix for your report.
  final String? subdirectory;

  TaskTaskReportConfigS3Destination({
    required this.bucketAccessRoleArn,
    required this.s3BucketArn,
    this.subdirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketAccessRoleArn'] = bucketAccessRoleArn;
    map['s3BucketArn'] = s3BucketArn;
    final subdirectoryValue = subdirectory;
    if (subdirectoryValue != null) {
      map['subdirectory'] = subdirectoryValue;
    }
    return map;
  }

  factory TaskTaskReportConfigS3Destination.fromMap(Map<String, dynamic> map) {
    return TaskTaskReportConfigS3Destination(
      bucketAccessRoleArn: map['bucketAccessRoleArn'] as String,
      s3BucketArn: map['s3BucketArn'] as String,
      subdirectory:
          map['subdirectory'] == null ? null : map['subdirectory'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskTaskReportConfigS3Destination {
  /// Specifies the Amazon Resource Name (ARN) of the IAM policy that allows DataSync to upload a task report to your S3 bucket.
  final pulumi.Input<String> bucketAccessRoleArn;
  /// Specifies the ARN of the S3 bucket where DataSync uploads your report.
  final pulumi.Input<String> s3BucketArn;
  /// Specifies a bucket prefix for your report.
  final pulumi.Input<String>? subdirectory;

  /// Creates a new [TaskTaskReportConfigS3Destination].
  /// [bucketAccessRoleArn] Specifies the Amazon Resource Name (ARN) of the IAM policy that allows DataSync to upload a task report to your S3 bucket.
  /// [s3BucketArn] Specifies the ARN of the S3 bucket where DataSync uploads your report.
  /// [subdirectory] Specifies a bucket prefix for your report.
  TaskTaskReportConfigS3Destination({
    required this.bucketAccessRoleArn,
    required this.s3BucketArn,
    this.subdirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketAccessRoleArn': bucketAccessRoleArn,
      's3BucketArn': s3BucketArn,
      'subdirectory': ?subdirectory,
    };
  }

  factory TaskTaskReportConfigS3Destination.fromMap(Map<String, dynamic> map) {
    return TaskTaskReportConfigS3Destination(
      bucketAccessRoleArn: pulumi.Input.fromValue(map['bucketAccessRoleArn'] as String),
      s3BucketArn: pulumi.Input.fromValue(map['s3BucketArn'] as String),
      subdirectory: (() { final guardedValue = map['subdirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


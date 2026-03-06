// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReportPlanReportDeliveryChannel {
  /// List of the format of your reports: CSV, JSON, or both.
  final pulumi.Input<List<String>> formats;
  /// Unique name of the S3 bucket that receives your reports.
  final pulumi.Input<String> s3BucketName;
  /// Prefix for where Backup Audit Manager delivers your reports to Amazon S3. The prefix is this part of the following path: s3://your-bucket-name/prefix/Backup/us-west-2/year/month/day/report-name.
  final pulumi.Input<String> s3KeyPrefix;

  /// Creates a new [GetReportPlanReportDeliveryChannel].
  /// [formats] List of the format of your reports: CSV, JSON, or both.
  /// [s3BucketName] Unique name of the S3 bucket that receives your reports.
  /// [s3KeyPrefix] Prefix for where Backup Audit Manager delivers your reports to Amazon S3. The prefix is this part of the following path: s3://your-bucket-name/prefix/Backup/us-west-2/year/month/day/report-name.
  const GetReportPlanReportDeliveryChannel({
    required this.formats,
    required this.s3BucketName,
    required this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formats': formats,
      's3BucketName': s3BucketName,
      's3KeyPrefix': s3KeyPrefix,
    };
  }

  factory GetReportPlanReportDeliveryChannel.fromMap(Map<String, dynamic> map) {
    return GetReportPlanReportDeliveryChannel(
      formats: pulumi.Input.fromValue((map['formats'] as List).cast<String>()),
      s3BucketName: pulumi.Input.fromValue(map['s3BucketName'] as String),
      s3KeyPrefix: pulumi.Input.fromValue(map['s3KeyPrefix'] as String),
    );
  }
}


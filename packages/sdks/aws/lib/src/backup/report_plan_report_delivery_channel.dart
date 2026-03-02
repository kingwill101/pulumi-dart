// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportPlanReportDeliveryChannel {
  /// A list of the format of your reports: CSV, JSON, or both. If not specified, the default format is CSV.
  final pulumi.Input<List<String>>? formats;
  /// The unique name of the S3 bucket that receives your reports.
  final pulumi.Input<String> s3BucketName;
  /// The prefix for where Backup Audit Manager delivers your reports to Amazon S3. The prefix is this part of the following path: s3://your-bucket-name/prefix/Backup/us-west-2/year/month/day/report-name. If not specified, there is no prefix.
  final pulumi.Input<String>? s3KeyPrefix;

  /// Creates a new [ReportPlanReportDeliveryChannel].
  /// [formats] A list of the format of your reports: CSV, JSON, or both. If not specified, the default format is CSV.
  /// [s3BucketName] The unique name of the S3 bucket that receives your reports.
  /// [s3KeyPrefix] The prefix for where Backup Audit Manager delivers your reports to Amazon S3. The prefix is this part of the following path: s3://your-bucket-name/prefix/Backup/us-west-2/year/month/day/report-name. If not specified, there is no prefix.
  ReportPlanReportDeliveryChannel({
    this.formats,
    required this.s3BucketName,
    this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formats': ?formats,
      's3BucketName': s3BucketName,
      's3KeyPrefix': ?s3KeyPrefix,
    };
  }

  factory ReportPlanReportDeliveryChannel.fromMap(Map<String, dynamic> map) {
    return ReportPlanReportDeliveryChannel(
      formats: map['formats'] == null ? null : ((map['formats'] as List).cast<String>()).input(),
      s3BucketName: (map['s3BucketName'] as String).input(),
      s3KeyPrefix: map['s3KeyPrefix'] == null ? null : (map['s3KeyPrefix'] as String).input(),
    );
  }
}


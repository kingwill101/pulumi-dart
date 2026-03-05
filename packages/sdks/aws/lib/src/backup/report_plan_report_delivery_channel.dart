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
      formats: (() { final guardedValue = map['formats']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      s3BucketName: pulumi.Input.fromValue(map['s3BucketName'] as String),
      s3KeyPrefix: (() { final guardedValue = map['s3KeyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanReportConfigurationReportOutputS3Configuration {
  /// Account ID of the S3 bucket owner.
  final pulumi.Input<String> bucketOwner;
  /// S3 bucket path where reports will be stored.
  final pulumi.Input<String> bucketPath;

  /// Creates a new [PlanReportConfigurationReportOutputS3Configuration].
  /// [bucketOwner] Account ID of the S3 bucket owner.
  /// [bucketPath] S3 bucket path where reports will be stored.
  const PlanReportConfigurationReportOutputS3Configuration({
    required this.bucketOwner,
    required this.bucketPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketOwner': bucketOwner,
      'bucketPath': bucketPath,
    };
  }

  factory PlanReportConfigurationReportOutputS3Configuration.fromMap(Map<String, dynamic> map) {
    return PlanReportConfigurationReportOutputS3Configuration(
      bucketOwner: pulumi.Input.fromValue(map['bucketOwner'] as String),
      bucketPath: pulumi.Input.fromValue(map['bucketPath'] as String),
    );
  }
}

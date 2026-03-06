// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationReferenceDataSourcesS3 {
  /// The S3 Bucket ARN.
  final pulumi.Input<String> bucketArn;
  /// The File Key name containing reference data.
  final pulumi.Input<String> fileKey;
  /// The IAM Role ARN to read the data.
  final pulumi.Input<String> roleArn;

  /// Creates a new [AnalyticsApplicationReferenceDataSourcesS3].
  /// [bucketArn] The S3 Bucket ARN.
  /// [fileKey] The File Key name containing reference data.
  /// [roleArn] The IAM Role ARN to read the data.
  const AnalyticsApplicationReferenceDataSourcesS3({
    required this.bucketArn,
    required this.fileKey,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'fileKey': fileKey,
      'roleArn': roleArn,
    };
  }

  factory AnalyticsApplicationReferenceDataSourcesS3.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationReferenceDataSourcesS3(
      bucketArn: pulumi.Input.fromValue(map['bucketArn'] as String),
      fileKey: pulumi.Input.fromValue(map['fileKey'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}


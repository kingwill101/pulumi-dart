// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource {
  /// The ARN of the S3 bucket.
  final pulumi.Input<String> bucketArn;
  /// The object key name containing the reference data.
  final pulumi.Input<String> fileKey;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource].
  /// [bucketArn] The ARN of the S3 bucket.
  /// [fileKey] The object key name containing the reference data.
  const ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource({
    required this.bucketArn,
    required this.fileKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'fileKey': fileKey,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource(
      bucketArn: pulumi.Input.fromValue(map['bucketArn'] as String),
      fileKey: pulumi.Input.fromValue(map['fileKey'] as String),
    );
  }
}


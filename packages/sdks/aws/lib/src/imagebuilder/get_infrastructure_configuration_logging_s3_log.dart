// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInfrastructureConfigurationLoggingS3Log {
  /// Name of the S3 Bucket for logging.
  final pulumi.Input<String> s3BucketName;
  /// Key prefix for S3 Bucket logging.
  final pulumi.Input<String> s3KeyPrefix;

  /// Creates a new [GetInfrastructureConfigurationLoggingS3Log].
  /// [s3BucketName] Name of the S3 Bucket for logging.
  /// [s3KeyPrefix] Key prefix for S3 Bucket logging.
  GetInfrastructureConfigurationLoggingS3Log({
    required this.s3BucketName,
    required this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3BucketName': s3BucketName,
      's3KeyPrefix': s3KeyPrefix,
    };
  }

  factory GetInfrastructureConfigurationLoggingS3Log.fromMap(Map<String, dynamic> map) {
    return GetInfrastructureConfigurationLoggingS3Log(
      s3BucketName: pulumi.Input.fromValue(map['s3BucketName'] as String),
      s3KeyPrefix: pulumi.Input.fromValue(map['s3KeyPrefix'] as String),
    );
  }
}


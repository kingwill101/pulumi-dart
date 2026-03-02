// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InfrastructureConfigurationLoggingS3Logs {
  /// Name of the S3 Bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> s3BucketName;
  /// Prefix to use for S3 logs. Defaults to `/`.
  final pulumi.Input<String>? s3KeyPrefix;

  /// Creates a new [InfrastructureConfigurationLoggingS3Logs].
  /// [s3BucketName] Name of the S3 Bucket.
  /// [s3KeyPrefix] Prefix to use for S3 logs. Defaults to `/`.
  InfrastructureConfigurationLoggingS3Logs({
    required this.s3BucketName,
    this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3BucketName': s3BucketName,
      's3KeyPrefix': ?s3KeyPrefix,
    };
  }

  factory InfrastructureConfigurationLoggingS3Logs.fromMap(Map<String, dynamic> map) {
    return InfrastructureConfigurationLoggingS3Logs(
      s3BucketName: (map['s3BucketName'] as String).input(),
      s3KeyPrefix: map['s3KeyPrefix'] == null ? null : ((map['s3KeyPrefix'] as String).input()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryErrorReportConfigurationS3Configuration {
  /// Name of the S3 bucket under which error reports will be created.
  final pulumi.Input<String> bucketName;
  /// Encryption at rest options for the error reports. If no encryption option is specified, Timestream will choose `SSE_S3` as default. Valid values are `SSE_S3`, `SSE_KMS`.
  final pulumi.Input<String>? encryptionOption;
  /// Prefix for the error report key.
  final pulumi.Input<String>? objectKeyPrefix;

  /// Creates a new [ScheduledQueryErrorReportConfigurationS3Configuration].
  /// [bucketName] Name of the S3 bucket under which error reports will be created.
  /// [encryptionOption] Encryption at rest options for the error reports. If no encryption option is specified, Timestream will choose `SSE_S3` as default. Valid values are `SSE_S3`, `SSE_KMS`.
  /// [objectKeyPrefix] Prefix for the error report key.
  const ScheduledQueryErrorReportConfigurationS3Configuration({
    required this.bucketName,
    this.encryptionOption,
    this.objectKeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'encryptionOption': ?encryptionOption,
      'objectKeyPrefix': ?objectKeyPrefix,
    };
  }

  factory ScheduledQueryErrorReportConfigurationS3Configuration.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryErrorReportConfigurationS3Configuration(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      encryptionOption: (() { final guardedValue = map['encryptionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectKeyPrefix: (() { final guardedValue = map['objectKeyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


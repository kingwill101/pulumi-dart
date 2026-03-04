// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ExecuteCommandLogConfiguration
class ExecuteCommandLogConfigurationResponse {
  /// Determines whether to use encryption on the CloudWatch logs. If not specified, encryption will be off.
  final pulumi.Input<bool>? cloudWatchEncryptionEnabled;

  /// The name of the CloudWatch log group to send logs to.  The CloudWatch log group must already be created.
  final pulumi.Input<String>? cloudWatchLogGroupName;

  /// The name of the S3 bucket to send logs to.  The S3 bucket must already be created.
  final pulumi.Input<String>? s3BucketName;

  /// Determines whether to use encryption on the S3 logs. If not specified, encryption is not used.
  final pulumi.Input<bool>? s3EncryptionEnabled;

  /// An optional folder in the S3 bucket to place logs in.
  final pulumi.Input<String>? s3KeyPrefix;

  /// Creates a new [ExecuteCommandLogConfigurationResponse].
  /// [cloudWatchEncryptionEnabled] Determines whether to use encryption on the CloudWatch logs. If not specified, encryption will be off.
  /// [cloudWatchLogGroupName] The name of the CloudWatch log group to send logs to.  The CloudWatch log group must already be created.
  /// [s3BucketName] The name of the S3 bucket to send logs to.  The S3 bucket must already be created.
  /// [s3EncryptionEnabled] Determines whether to use encryption on the S3 logs. If not specified, encryption is not used.
  /// [s3KeyPrefix] An optional folder in the S3 bucket to place logs in.
  ExecuteCommandLogConfigurationResponse({
    this.cloudWatchEncryptionEnabled,
    this.cloudWatchLogGroupName,
    this.s3BucketName,
    this.s3EncryptionEnabled,
    this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchEncryptionEnabled': ?cloudWatchEncryptionEnabled,
      'cloudWatchLogGroupName': ?cloudWatchLogGroupName,
      's3BucketName': ?s3BucketName,
      's3EncryptionEnabled': ?s3EncryptionEnabled,
      's3KeyPrefix': ?s3KeyPrefix,
    };
  }

  factory ExecuteCommandLogConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExecuteCommandLogConfigurationResponse(
      cloudWatchEncryptionEnabled: (() {
        final guardedValue = map['cloudWatchEncryptionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cloudWatchLogGroupName: (() {
        final guardedValue = map['cloudWatchLogGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      s3BucketName: (() {
        final guardedValue = map['s3BucketName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      s3EncryptionEnabled: (() {
        final guardedValue = map['s3EncryptionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      s3KeyPrefix: (() {
        final guardedValue = map['s3KeyPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

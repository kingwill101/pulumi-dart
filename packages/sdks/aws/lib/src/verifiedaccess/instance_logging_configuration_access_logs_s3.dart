// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceLoggingConfigurationAccessLogsS3 {
  /// The name of S3 bucket.
  final pulumi.Input<String>? bucketName;
  /// The ID of the AWS account that owns the Amazon S3 bucket.
  final pulumi.Input<String>? bucketOwner;
  /// Indicates whether logging is enabled.
  final pulumi.Input<bool> enabled;
  /// The bucket prefix.
  final pulumi.Input<String>? prefix;

  /// Creates a new [InstanceLoggingConfigurationAccessLogsS3].
  /// [bucketName] The name of S3 bucket.
  /// [bucketOwner] The ID of the AWS account that owns the Amazon S3 bucket.
  /// [enabled] Indicates whether logging is enabled.
  /// [prefix] The bucket prefix.
  const InstanceLoggingConfigurationAccessLogsS3({
    this.bucketName,
    this.bucketOwner,
    required this.enabled,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'bucketOwner': ?bucketOwner,
      'enabled': enabled,
      'prefix': ?prefix,
    };
  }

  factory InstanceLoggingConfigurationAccessLogsS3.fromMap(Map<String, dynamic> map) {
    return InstanceLoggingConfigurationAccessLogsS3(
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketOwner: (() { final guardedValue = map['bucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

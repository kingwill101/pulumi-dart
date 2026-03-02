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
  InstanceLoggingConfigurationAccessLogsS3({
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
      bucketName: map['bucketName'] == null ? null : (map['bucketName'] as String).input(),
      bucketOwner: map['bucketOwner'] == null ? null : (map['bucketOwner'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
    );
  }
}


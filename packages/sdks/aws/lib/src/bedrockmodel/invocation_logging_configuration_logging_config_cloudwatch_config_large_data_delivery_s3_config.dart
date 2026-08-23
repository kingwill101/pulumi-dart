// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config {
  /// S3 bucket name.
  final pulumi.Input<String> bucketName;
  /// S3 prefix.
  final pulumi.Input<String>? keyPrefix;

  /// Creates a new [InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config].
  /// [bucketName] S3 bucket name.
  /// [keyPrefix] S3 prefix.
  const InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config({
    required this.bucketName,
    this.keyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'keyPrefix': ?keyPrefix,
    };
  }

  factory InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config.fromMap(Map<String, dynamic> map) {
    return InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      keyPrefix: (() { final guardedValue = map['keyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

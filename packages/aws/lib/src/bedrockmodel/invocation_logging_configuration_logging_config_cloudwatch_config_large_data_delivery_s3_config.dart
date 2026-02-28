// ignore_for_file: unused_element, unnecessary_cast

class InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config {
  /// S3 bucket name.
  final String bucketName;

  /// S3 prefix.
  final String? keyPrefix;

  /// Creates a new [InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config].
  /// [bucketName] S3 bucket name.
  /// [keyPrefix] S3 prefix.
  InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config({
    required this.bucketName,
    this.keyPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final keyPrefixValue = keyPrefix;
    if (keyPrefixValue != null) {
      map['keyPrefix'] = keyPrefixValue;
    }
    return map;
  }

  factory InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config.fromMap(
      Map<String, dynamic> map) {
    return InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config(
      bucketName: map['bucketName'] as String,
      keyPrefix: map['keyPrefix'] == null ? null : map['keyPrefix'] as String,
    );
  }
}

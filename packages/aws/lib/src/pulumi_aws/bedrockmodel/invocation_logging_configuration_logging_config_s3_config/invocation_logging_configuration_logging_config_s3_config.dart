// ignore_for_file: unused_element, unnecessary_cast

class InvocationLoggingConfigurationLoggingConfigS3Config {
  /// S3 bucket name.
  final String bucketName;

  /// S3 prefix.
  final String? keyPrefix;

  InvocationLoggingConfigurationLoggingConfigS3Config({
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

  factory InvocationLoggingConfigurationLoggingConfigS3Config.fromMap(
      Map<String, dynamic> map) {
    return InvocationLoggingConfigurationLoggingConfigS3Config(
      bucketName: map['bucketName'] as String,
      keyPrefix: map['keyPrefix'] == null ? null : map['keyPrefix'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class InvocationLoggingConfigurationLoggingConfigS3Config {
  /// S3 bucket name.
  final String bucketName;

  /// S3 prefix.
  final String? keyPrefix;

  /// Creates a new [InvocationLoggingConfigurationLoggingConfigS3Config].
  /// [bucketName] S3 bucket name.
  /// [keyPrefix] S3 prefix.
  InvocationLoggingConfigurationLoggingConfigS3Config({
    required this.bucketName,
    this.keyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucketName': bucketName, 'keyPrefix': ?keyPrefix};
  }

  factory InvocationLoggingConfigurationLoggingConfigS3Config.fromMap(
    Map<String, dynamic> map,
  ) {
    return InvocationLoggingConfigurationLoggingConfigS3Config(
      bucketName: map['bucketName'] as String,
      keyPrefix: map['keyPrefix'] == null ? null : map['keyPrefix'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class InstanceLoggingConfigurationAccessLogsS3 {
  /// The name of S3 bucket.
  final String? bucketName;

  /// The ID of the AWS account that owns the Amazon S3 bucket.
  final String? bucketOwner;

  /// Indicates whether logging is enabled.
  final bool enabled;

  /// The bucket prefix.
  final String? prefix;

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
    final map = <String, dynamic>{};
    final bucketNameValue = bucketName;
    if (bucketNameValue != null) {
      map['bucketName'] = bucketNameValue;
    }
    final bucketOwnerValue = bucketOwner;
    if (bucketOwnerValue != null) {
      map['bucketOwner'] = bucketOwnerValue;
    }
    map['enabled'] = enabled;
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory InstanceLoggingConfigurationAccessLogsS3.fromMap(
      Map<String, dynamic> map) {
    return InstanceLoggingConfigurationAccessLogsS3(
      bucketName:
          map['bucketName'] == null ? null : map['bucketName'] as String,
      bucketOwner:
          map['bucketOwner'] == null ? null : map['bucketOwner'] as String,
      enabled: map['enabled'] as bool,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

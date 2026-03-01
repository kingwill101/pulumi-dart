// ignore_for_file: unused_element, unnecessary_cast

class ClusterLoggingInfoBrokerLogsS3 {
  /// Name of the S3 bucket to deliver logs to.
  final String? bucket;
  final bool enabled;

  /// Prefix to append to the folder name.
  final String? prefix;

  /// Creates a new [ClusterLoggingInfoBrokerLogsS3].
  /// [bucket] Name of the S3 bucket to deliver logs to.
  /// [enabled] Required.
  /// [prefix] Prefix to append to the folder name.
  ClusterLoggingInfoBrokerLogsS3({
    this.bucket,
    required this.enabled,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'enabled': enabled,
      'prefix': ?prefix,
    };
  }

  factory ClusterLoggingInfoBrokerLogsS3.fromMap(Map<String, dynamic> map) {
    return ClusterLoggingInfoBrokerLogsS3(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      enabled: map['enabled'] as bool,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

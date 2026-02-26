// ignore_for_file: unused_element, unnecessary_cast

class ClusterLoggingInfoBrokerLogsS3 {
  /// Name of the S3 bucket to deliver logs to.
  final String? bucket;
  final bool enabled;

  /// Prefix to append to the folder name.
  final String? prefix;

  ClusterLoggingInfoBrokerLogsS3({
    this.bucket,
    required this.enabled,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    map['enabled'] = enabled;
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory ClusterLoggingInfoBrokerLogsS3.fromMap(Map<String, dynamic> map) {
    return ClusterLoggingInfoBrokerLogsS3(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      enabled: map['enabled'] as bool,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

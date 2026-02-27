// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerAccessLogsElb {
  /// The S3 bucket name to store the logs in.
  final String bucket;

  /// The S3 bucket prefix. Logs are stored in the root if not configured.
  final String? bucketPrefix;

  /// Boolean to enable / disable `access_logs`. Default is `true`
  final bool? enabled;

  /// The publishing interval in minutes. Valid values: `5` and `60`. Default: `60`
  final int? interval;

  LoadBalancerAccessLogsElb({
    required this.bucket,
    this.bucketPrefix,
    this.enabled,
    this.interval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final bucketPrefixValue = bucketPrefix;
    if (bucketPrefixValue != null) {
      map['bucketPrefix'] = bucketPrefixValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final intervalValue = interval;
    if (intervalValue != null) {
      map['interval'] = intervalValue;
    }
    return map;
  }

  factory LoadBalancerAccessLogsElb.fromMap(Map<String, dynamic> map) {
    return LoadBalancerAccessLogsElb(
      bucket: map['bucket'] as String,
      bucketPrefix:
          map['bucketPrefix'] == null ? null : map['bucketPrefix'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      interval: map['interval'] == null ? null : map['interval'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerAccessLogs {
  /// The S3 bucket name to store the logs in.
  final String bucket;
  /// The S3 bucket prefix. Logs are stored in the root if not configured.
  final String? bucketPrefix;
  /// Boolean to enable / disable `access_logs`. Default is `true`
  final bool? enabled;
  /// The publishing interval in minutes. Valid values: `5` and `60`. Default: `60`
  final int? interval;

  /// Creates a new [LoadBalancerAccessLogs].
  /// [bucket] The S3 bucket name to store the logs in.
  /// [bucketPrefix] The S3 bucket prefix. Logs are stored in the root if not configured.
  /// [enabled] Boolean to enable / disable `access_logs`. Default is `true`
  /// [interval] The publishing interval in minutes. Valid values: `5` and `60`. Default: `60`
  LoadBalancerAccessLogs({
    required this.bucket,
    this.bucketPrefix,
    this.enabled,
    this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'bucketPrefix': ?bucketPrefix,
      'enabled': ?enabled,
      'interval': ?interval,
    };
  }

  factory LoadBalancerAccessLogs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerAccessLogs(
      bucket: map['bucket'] as String,
      bucketPrefix: map['bucketPrefix'] == null ? null : map['bucketPrefix'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      interval: map['interval'] == null ? null : map['interval'] as int,
    );
  }
}


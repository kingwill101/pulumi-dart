// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerHealthCheckLogs {
  /// S3 bucket name to store the logs in.
  final String bucket;

  /// Boolean to enable / disable `health_check_logs`. Defaults to `false`, even when `bucket` is specified.
  final bool? enabled;

  /// S3 bucket prefix. Logs are stored in the root if not configured.
  final String? prefix;

  LoadBalancerHealthCheckLogs({
    required this.bucket,
    this.enabled,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory LoadBalancerHealthCheckLogs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerHealthCheckLogs(
      bucket: map['bucket'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

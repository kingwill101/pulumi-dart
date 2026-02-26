// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerHealthCheckLogs {
  /// S3 bucket name to store the logs in.
  final String bucket;

  /// Boolean to enable / disable <span pulumi-lang-nodejs="`healthCheckLogs`" pulumi-lang-dotnet="`HealthCheckLogs`" pulumi-lang-go="`healthCheckLogs`" pulumi-lang-python="`health_check_logs`" pulumi-lang-yaml="`healthCheckLogs`" pulumi-lang-java="`healthCheckLogs`">`health_check_logs`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, even when <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> is specified.
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

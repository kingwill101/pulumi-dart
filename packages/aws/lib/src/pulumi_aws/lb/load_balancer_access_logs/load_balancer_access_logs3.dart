// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerAccessLogs3 {
  /// S3 bucket name to store the logs in.
  final String bucket;

  /// Boolean to enable / disable <span pulumi-lang-nodejs="`accessLogs`" pulumi-lang-dotnet="`AccessLogs`" pulumi-lang-go="`accessLogs`" pulumi-lang-python="`access_logs`" pulumi-lang-yaml="`accessLogs`" pulumi-lang-java="`accessLogs`">`access_logs`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, even when <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> is specified.
  final bool? enabled;

  /// S3 bucket prefix. Logs are stored in the root if not configured.
  final String? prefix;

  LoadBalancerAccessLogs3({
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

  factory LoadBalancerAccessLogs3.fromMap(Map<String, dynamic> map) {
    return LoadBalancerAccessLogs3(
      bucket: map['bucket'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerConnectionLogs2 {
  /// S3 bucket name to store the logs in.
  final String bucket;

  /// Boolean to enable / disable <span pulumi-lang-nodejs="`connectionLogs`" pulumi-lang-dotnet="`ConnectionLogs`" pulumi-lang-go="`connectionLogs`" pulumi-lang-python="`connection_logs`" pulumi-lang-yaml="`connectionLogs`" pulumi-lang-java="`connectionLogs`">`connection_logs`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, even when <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> is specified.
  final bool? enabled;

  /// S3 bucket prefix. Logs are stored in the root if not configured.
  final String? prefix;

  LoadBalancerConnectionLogs2({
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

  factory LoadBalancerConnectionLogs2.fromMap(Map<String, dynamic> map) {
    return LoadBalancerConnectionLogs2(
      bucket: map['bucket'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

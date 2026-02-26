// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerAccessLogs2 {
  /// The S3 bucket name to store the logs in.
  final String bucket;

  /// The S3 bucket prefix. Logs are stored in the root if not configured.
  final String? bucketPrefix;

  /// Boolean to enable / disable <span pulumi-lang-nodejs="`accessLogs`" pulumi-lang-dotnet="`AccessLogs`" pulumi-lang-go="`accessLogs`" pulumi-lang-python="`access_logs`" pulumi-lang-yaml="`accessLogs`" pulumi-lang-java="`accessLogs`">`access_logs`</span>. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>
  final bool? enabled;

  /// The publishing interval in minutes. Valid values: <span pulumi-lang-nodejs="`5`" pulumi-lang-dotnet="`5`" pulumi-lang-go="`5`" pulumi-lang-python="`5`" pulumi-lang-yaml="`5`" pulumi-lang-java="`5`">`5`</span> and <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>. Default: <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>
  final int? interval;

  LoadBalancerAccessLogs2({
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

  factory LoadBalancerAccessLogs2.fromMap(Map<String, dynamic> map) {
    return LoadBalancerAccessLogs2(
      bucket: map['bucket'] as String,
      bucketPrefix:
          map['bucketPrefix'] == null ? null : map['bucketPrefix'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      interval: map['interval'] == null ? null : map['interval'] as int,
    );
  }
}

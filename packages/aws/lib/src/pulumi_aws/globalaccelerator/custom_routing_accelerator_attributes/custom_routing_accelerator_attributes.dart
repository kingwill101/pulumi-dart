// ignore_for_file: unused_element, unnecessary_cast

class CustomRoutingAcceleratorAttributes {
  /// Indicates whether flow logs are enabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Valid values: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? flowLogsEnabled;

  /// The name of the Amazon S3 bucket for the flow logs. Required if <span pulumi-lang-nodejs="`flowLogsEnabled`" pulumi-lang-dotnet="`FlowLogsEnabled`" pulumi-lang-go="`flowLogsEnabled`" pulumi-lang-python="`flow_logs_enabled`" pulumi-lang-yaml="`flowLogsEnabled`" pulumi-lang-java="`flowLogsEnabled`">`flow_logs_enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final String? flowLogsS3Bucket;

  /// The prefix for the location in the Amazon S3 bucket for the flow logs. Required if <span pulumi-lang-nodejs="`flowLogsEnabled`" pulumi-lang-dotnet="`FlowLogsEnabled`" pulumi-lang-go="`flowLogsEnabled`" pulumi-lang-python="`flow_logs_enabled`" pulumi-lang-yaml="`flowLogsEnabled`" pulumi-lang-java="`flowLogsEnabled`">`flow_logs_enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final String? flowLogsS3Prefix;

  CustomRoutingAcceleratorAttributes({
    this.flowLogsEnabled,
    this.flowLogsS3Bucket,
    this.flowLogsS3Prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final flowLogsEnabledValue = flowLogsEnabled;
    if (flowLogsEnabledValue != null) {
      map['flowLogsEnabled'] = flowLogsEnabledValue;
    }
    final flowLogsS3BucketValue = flowLogsS3Bucket;
    if (flowLogsS3BucketValue != null) {
      map['flowLogsS3Bucket'] = flowLogsS3BucketValue;
    }
    final flowLogsS3PrefixValue = flowLogsS3Prefix;
    if (flowLogsS3PrefixValue != null) {
      map['flowLogsS3Prefix'] = flowLogsS3PrefixValue;
    }
    return map;
  }

  factory CustomRoutingAcceleratorAttributes.fromMap(Map<String, dynamic> map) {
    return CustomRoutingAcceleratorAttributes(
      flowLogsEnabled: map['flowLogsEnabled'] == null
          ? null
          : map['flowLogsEnabled'] as bool,
      flowLogsS3Bucket: map['flowLogsS3Bucket'] == null
          ? null
          : map['flowLogsS3Bucket'] as String,
      flowLogsS3Prefix: map['flowLogsS3Prefix'] == null
          ? null
          : map['flowLogsS3Prefix'] as String,
    );
  }
}

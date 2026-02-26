// ignore_for_file: unused_element, unnecessary_cast

class GraphQLApiLogConfig {
  /// Amazon Resource Name of the service role that AWS AppSync will assume to publish to Amazon CloudWatch logs in your account.
  final String cloudwatchLogsRoleArn;

  /// Set to TRUE to exclude sections that contain information such as headers, context, and evaluated mapping templates, regardless of logging  level. Valid values: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Default value: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  final bool? excludeVerboseContent;

  /// Field logging level. Valid values: `ALL`, `ERROR`, `NONE`.
  final String fieldLogLevel;

  GraphQLApiLogConfig({
    required this.cloudwatchLogsRoleArn,
    this.excludeVerboseContent,
    required this.fieldLogLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudwatchLogsRoleArn'] = cloudwatchLogsRoleArn;
    final excludeVerboseContentValue = excludeVerboseContent;
    if (excludeVerboseContentValue != null) {
      map['excludeVerboseContent'] = excludeVerboseContentValue;
    }
    map['fieldLogLevel'] = fieldLogLevel;
    return map;
  }

  factory GraphQLApiLogConfig.fromMap(Map<String, dynamic> map) {
    return GraphQLApiLogConfig(
      cloudwatchLogsRoleArn: map['cloudwatchLogsRoleArn'] as String,
      excludeVerboseContent: map['excludeVerboseContent'] == null
          ? null
          : map['excludeVerboseContent'] as bool,
      fieldLogLevel: map['fieldLogLevel'] as String,
    );
  }
}

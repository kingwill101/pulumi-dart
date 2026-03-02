// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GraphQLApiLogConfig {
  /// Amazon Resource Name of the service role that AWS AppSync will assume to publish to Amazon CloudWatch logs in your account.
  final pulumi.Input<String> cloudwatchLogsRoleArn;
  /// Set to TRUE to exclude sections that contain information such as headers, context, and evaluated mapping templates, regardless of logging  level. Valid values: `true`, `false`. Default value: `false`
  final pulumi.Input<bool>? excludeVerboseContent;
  /// Field logging level. Valid values: `ALL`, `ERROR`, `NONE`.
  final pulumi.Input<String> fieldLogLevel;

  /// Creates a new [GraphQLApiLogConfig].
  /// [cloudwatchLogsRoleArn] Amazon Resource Name of the service role that AWS AppSync will assume to publish to Amazon CloudWatch logs in your account.
  /// [excludeVerboseContent] Set to TRUE to exclude sections that contain information such as headers, context, and evaluated mapping templates, regardless of logging  level. Valid values: `true`, `false`. Default value: `false`
  /// [fieldLogLevel] Field logging level. Valid values: `ALL`, `ERROR`, `NONE`.
  GraphQLApiLogConfig({
    required this.cloudwatchLogsRoleArn,
    this.excludeVerboseContent,
    required this.fieldLogLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogsRoleArn': cloudwatchLogsRoleArn,
      'excludeVerboseContent': ?excludeVerboseContent,
      'fieldLogLevel': fieldLogLevel,
    };
  }

  factory GraphQLApiLogConfig.fromMap(Map<String, dynamic> map) {
    return GraphQLApiLogConfig(
      cloudwatchLogsRoleArn: (map['cloudwatchLogsRoleArn'] as String).input(),
      excludeVerboseContent: map['excludeVerboseContent'] == null ? null : (map['excludeVerboseContent'] as bool).input(),
      fieldLogLevel: (map['fieldLogLevel'] as String).input(),
    );
  }
}


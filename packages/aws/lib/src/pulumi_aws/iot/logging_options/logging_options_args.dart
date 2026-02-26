// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LoggingOptions.
class LoggingOptionsArgs {
  /// The default logging level. Valid Values: `"DEBUG"`, `"INFO"`, `"ERROR"`, `"WARN"`, `"DISABLED"`.
  final Input<String> defaultLogLevel;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> all logs are disabled. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? disableAllLogs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the role that allows IoT to write to Cloudwatch logs.
  final Input<String> roleArn;

  LoggingOptionsArgs({
    required this.defaultLogLevel,
    this.disableAllLogs,
    this.region,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultLogLevel'] = defaultLogLevel;
    final disableAllLogsValue = disableAllLogs;
    if (disableAllLogsValue != null) {
      map['disableAllLogs'] = disableAllLogsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    return map;
  }

  factory LoggingOptionsArgs.fromMap(Map<String, dynamic> map) {
    return LoggingOptionsArgs(
      defaultLogLevel: Input.asInput<String>(map['defaultLogLevel']),
      disableAllLogs: Input.asOptionalInput<bool>(map['disableAllLogs']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
    );
  }
}

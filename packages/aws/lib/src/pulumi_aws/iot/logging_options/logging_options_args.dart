// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LoggingOptions.
class LoggingOptionsArgs {
  /// The default logging level. Valid Values: `"DEBUG"`, `"INFO"`, `"ERROR"`, `"WARN"`, `"DISABLED"`.
  final pulumi.Input<String> defaultLogLevel;

  /// If `true` all logs are disabled. The default is `false`.
  final pulumi.Input<bool>? disableAllLogs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ARN of the role that allows IoT to write to Cloudwatch logs.
  final pulumi.Input<String> roleArn;

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
      defaultLogLevel: pulumi.Input.asInput<String>(map['defaultLogLevel']),
      disableAllLogs: pulumi.Input.asOptionalInput<bool>(map['disableAllLogs']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
    );
  }
}

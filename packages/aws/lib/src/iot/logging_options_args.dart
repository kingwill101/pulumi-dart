// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_logging_options_logging_options_args_doc}
/// The set of arguments for LoggingOptions.
/// {@endtemplate}
/// {@macro pulumi_iot_logging_options_logging_options_args_doc}
class LoggingOptionsArgs {
  /// The default logging level. Valid Values: `"DEBUG"`, `"INFO"`, `"ERROR"`, `"WARN"`, `"DISABLED"`.
  final pulumi.Input<String> defaultLogLevel;

  /// If `true` all logs are disabled. The default is `false`.
  final pulumi.Input<bool>? disableAllLogs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ARN of the role that allows IoT to write to Cloudwatch logs.
  final pulumi.Input<String> roleArn;

  /// Creates a new [LoggingOptionsArgs].
  /// [defaultLogLevel] The default logging level. Valid Values: `"DEBUG"`, `"INFO"`, `"ERROR"`, `"WARN"`, `"DISABLED"`.
  /// [disableAllLogs] If `true` all logs are disabled. The default is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the role that allows IoT to write to Cloudwatch logs.
  LoggingOptionsArgs({
    required String defaultLogLevel,
    bool? disableAllLogs,
    String? region,
    required String roleArn,
  })  : defaultLogLevel = pulumi.Input.asInput<String>(defaultLogLevel),
        disableAllLogs = pulumi.Input.asOptionalInput<bool>(disableAllLogs),
        region = pulumi.Input.asOptionalInput<String>(region),
        roleArn = pulumi.Input.asInput<String>(roleArn);

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
      defaultLogLevel: map['defaultLogLevel'] as String,
      disableAllLogs:
          map['disableAllLogs'] == null ? null : map['disableAllLogs'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}

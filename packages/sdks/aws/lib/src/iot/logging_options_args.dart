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
    required this.defaultLogLevel,
    this.disableAllLogs,
    this.region,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLogLevel': defaultLogLevel,
      'disableAllLogs': ?disableAllLogs,
      'region': ?region,
      'roleArn': roleArn,
    };
  }

  factory LoggingOptionsArgs.fromMap(Map<String, dynamic> map) {
    return LoggingOptionsArgs(
      defaultLogLevel: (map['defaultLogLevel'] as String).input(),
      disableAllLogs: map['disableAllLogs'] == null ? null : ((map['disableAllLogs'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoggingOptions resources.
class LoggingOptionsState {
  /// The default logging level. Valid Values: `"DEBUG"`, `"INFO"`, `"ERROR"`, `"WARN"`, `"DISABLED"`.
  final pulumi.Input<String>? defaultLogLevel;
  /// If `true` all logs are disabled. The default is `false`.
  final pulumi.Input<bool>? disableAllLogs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the role that allows IoT to write to Cloudwatch logs.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [LoggingOptionsState].
  /// [defaultLogLevel] The default logging level. Valid Values: `"DEBUG"`, `"INFO"`, `"ERROR"`, `"WARN"`, `"DISABLED"`.
  /// [disableAllLogs] If `true` all logs are disabled. The default is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the role that allows IoT to write to Cloudwatch logs.
  LoggingOptionsState({
    pulumi.Output<String>? defaultLogLevel,
    pulumi.Output<bool>? disableAllLogs,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
  }) :
      defaultLogLevel = pulumi.Input.asOptionalInput<String>(defaultLogLevel),
      disableAllLogs = pulumi.Input.asOptionalInput<bool>(disableAllLogs),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLogLevel': ?defaultLogLevel,
      'disableAllLogs': ?disableAllLogs,
      'region': ?region,
      'roleArn': ?roleArn,
    };
  }

  factory LoggingOptionsState.fromMap(Map<String, dynamic> map) {
    return LoggingOptionsState(
      defaultLogLevel: map['defaultLogLevel'] == null ? null : pulumi.Output.create<String>(map['defaultLogLevel'] as String),
      disableAllLogs: map['disableAllLogs'] == null ? null : pulumi.Output.create<bool>(map['disableAllLogs'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
    );
  }
}


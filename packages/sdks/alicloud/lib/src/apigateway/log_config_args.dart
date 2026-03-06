// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_log_config_log_config_args_doc}
/// The set of arguments for LogConfig.
/// {@endtemplate}
/// {@macro pulumi_apigateway_log_config_log_config_args_doc}
class LogConfigArgs {
  /// The type the of log. Valid values: `PROVIDER`.
  final pulumi.Input<String> logType;
  /// The name of the Log Store.
  final pulumi.Input<String> slsLogStore;
  /// The name of the Project.
  final pulumi.Input<String> slsProject;

  /// Creates a new [LogConfigArgs].
  /// [logType] The type the of log. Valid values: `PROVIDER`.
  /// [slsLogStore] The name of the Log Store.
  /// [slsProject] The name of the Project.
  const LogConfigArgs({
    required this.logType,
    required this.slsLogStore,
    required this.slsProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logType': logType,
      'slsLogStore': slsLogStore,
      'slsProject': slsProject,
    };
  }

  factory LogConfigArgs.fromMap(Map<String, dynamic> map) {
    return LogConfigArgs(
      logType: pulumi.Input.fromValue(map['logType'] as String),
      slsLogStore: pulumi.Input.fromValue(map['slsLogStore'] as String),
      slsProject: pulumi.Input.fromValue(map['slsProject'] as String),
    );
  }
}


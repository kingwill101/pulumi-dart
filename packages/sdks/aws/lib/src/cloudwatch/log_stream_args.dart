// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_log_stream_log_stream_args_doc}
/// The set of arguments for LogStream.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_stream_log_stream_args_doc}
class LogStreamArgs {
  /// The name of the log group under which the log stream is to be created.
  final pulumi.Input<String> logGroupName;
  /// The name of the log stream. Must not be longer than 512 characters and must not contain `:`
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogStreamArgs].
  /// [logGroupName] The name of the log group under which the log stream is to be created.
  /// [name] The name of the log stream. Must not be longer than 512 characters and must not contain `:`
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LogStreamArgs({
    required this.logGroupName,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupName': logGroupName,
      'name': ?name,
      'region': ?region,
    };
  }

  factory LogStreamArgs.fromMap(Map<String, dynamic> map) {
    return LogStreamArgs(
      logGroupName: pulumi.Input.fromValue(map['logGroupName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


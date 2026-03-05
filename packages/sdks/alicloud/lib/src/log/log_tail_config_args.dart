// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_log_log_tail_config_log_tail_config_args_doc}
/// The set of arguments for LogTailConfig.
/// {@endtemplate}
/// {@macro pulumi_log_log_tail_config_log_tail_config_args_doc}
class LogTailConfigArgs {
  /// The logtail configure the required JSON files. ([Refer to details](https://www.alibabacloud.com/help/doc-detail/29058.htm))
  final pulumi.Input<String> inputDetail;
  /// The input type. Currently only two types of files and plugin are supported.
  final pulumi.Input<String> inputType;
  /// The log sample of the Logtail configuration. The log size cannot exceed 1,000 bytes.
  final pulumi.Input<String>? logSample;
  /// The log store name to the query index belongs.
  final pulumi.Input<String> logstore;
  /// The Logtail configuration name, which is unique in the same project.
  final pulumi.Input<String>? name;
  /// The output type. Currently, only LogService is supported.
  final pulumi.Input<String> outputType;
  /// The project name to the log store belongs.
  final pulumi.Input<String> project;

  /// Creates a new [LogTailConfigArgs].
  /// [inputDetail] The logtail configure the required JSON files. ([Refer to details](https://www.alibabacloud.com/help/doc-detail/29058.htm))
  /// [inputType] The input type. Currently only two types of files and plugin are supported.
  /// [logSample] The log sample of the Logtail configuration. The log size cannot exceed 1,000 bytes.
  /// [logstore] The log store name to the query index belongs.
  /// [name] The Logtail configuration name, which is unique in the same project.
  /// [outputType] The output type. Currently, only LogService is supported.
  /// [project] The project name to the log store belongs.
  LogTailConfigArgs({
    required this.inputDetail,
    required this.inputType,
    this.logSample,
    required this.logstore,
    this.name,
    required this.outputType,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputDetail': inputDetail,
      'inputType': inputType,
      'logSample': ?logSample,
      'logstore': logstore,
      'name': ?name,
      'outputType': outputType,
      'project': project,
    };
  }

  factory LogTailConfigArgs.fromMap(Map<String, dynamic> map) {
    return LogTailConfigArgs(
      inputDetail: pulumi.Input.fromValue(map['inputDetail'] as String),
      inputType: pulumi.Input.fromValue(map['inputType'] as String),
      logSample: (() { final guardedValue = map['logSample']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logstore: pulumi.Input.fromValue(map['logstore'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputType: pulumi.Input.fromValue(map['outputType'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}


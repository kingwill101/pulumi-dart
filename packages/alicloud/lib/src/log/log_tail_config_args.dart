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
    required String inputDetail,
    required String inputType,
    String? logSample,
    required String logstore,
    String? name,
    required String outputType,
    required String project,
  }) :
      inputDetail = pulumi.Input.asInput<String>(inputDetail),
      inputType = pulumi.Input.asInput<String>(inputType),
      logSample = pulumi.Input.asOptionalInput<String>(logSample),
      logstore = pulumi.Input.asInput<String>(logstore),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputType = pulumi.Input.asInput<String>(outputType),
      project = pulumi.Input.asInput<String>(project);

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
      inputDetail: map['inputDetail'] as String,
      inputType: map['inputType'] as String,
      logSample: map['logSample'] == null ? null : map['logSample'] as String,
      logstore: map['logstore'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      outputType: map['outputType'] as String,
      project: map['project'] as String,
    );
  }
}


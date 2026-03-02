// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logtail_config_output_detail.dart';

/// {@template pulumi_sls_logtail_config_logtail_config_args_doc}
/// The set of arguments for LogtailConfig.
/// {@endtemplate}
/// {@macro pulumi_sls_logtail_config_logtail_config_args_doc}
class LogtailConfigArgs {
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The detailed configuration entered by logtail.
  final pulumi.Input<String>? inputDetail;
  /// Method of log entry
  final pulumi.Input<String>? inputType;
  /// Last modification time, unix timestamp
  final pulumi.Input<int>? lastModifyTime;
  /// Sample log
  final pulumi.Input<String>? logSample;
  /// The name of the resource
  final pulumi.Input<String>? logtailConfigName;
  /// Detailed configuration of logtail output See `output_detail` below.
  final pulumi.Input<LogtailConfigOutputDetail>? outputDetail;
  /// Log output mode. You can only upload data to log service.
  final pulumi.Input<String>? outputType;
  /// Project name
  final pulumi.Input<String> projectName;

  /// Creates a new [LogtailConfigArgs].
  /// [createTime] The creation time of the resource
  /// [inputDetail] The detailed configuration entered by logtail.
  /// [inputType] Method of log entry
  /// [lastModifyTime] Last modification time, unix timestamp
  /// [logSample] Sample log
  /// [logtailConfigName] The name of the resource
  /// [outputDetail] Detailed configuration of logtail output See `output_detail` below.
  /// [outputType] Log output mode. You can only upload data to log service.
  /// [projectName] Project name
  LogtailConfigArgs({
    this.createTime,
    this.inputDetail,
    this.inputType,
    this.lastModifyTime,
    this.logSample,
    this.logtailConfigName,
    this.outputDetail,
    this.outputType,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'inputDetail': ?inputDetail,
      'inputType': ?inputType,
      'lastModifyTime': ?lastModifyTime,
      'logSample': ?logSample,
      'logtailConfigName': ?logtailConfigName,
      'outputDetail': ?pulumi.Input.mapOptionalInputValue<LogtailConfigOutputDetail, Map<String, dynamic>>(outputDetail, (value) => value.toMap()),
      'outputType': ?outputType,
      'projectName': projectName,
    };
  }

  factory LogtailConfigArgs.fromMap(Map<String, dynamic> map) {
    return LogtailConfigArgs(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      inputDetail: map['inputDetail'] == null ? null : (map['inputDetail'] as String).input(),
      inputType: map['inputType'] == null ? null : (map['inputType'] as String).input(),
      lastModifyTime: map['lastModifyTime'] == null ? null : (map['lastModifyTime'] as int).input(),
      logSample: map['logSample'] == null ? null : (map['logSample'] as String).input(),
      logtailConfigName: map['logtailConfigName'] == null ? null : (map['logtailConfigName'] as String).input(),
      outputDetail: map['outputDetail'] == null ? null : (LogtailConfigOutputDetail.fromMap((map['outputDetail'] as Map).cast<String, dynamic>())).input(),
      outputType: map['outputType'] == null ? null : (map['outputType'] as String).input(),
      projectName: (map['projectName'] as String).input(),
    );
  }
}


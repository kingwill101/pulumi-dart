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
    String? createTime,
    String? inputDetail,
    String? inputType,
    int? lastModifyTime,
    String? logSample,
    String? logtailConfigName,
    LogtailConfigOutputDetail? outputDetail,
    String? outputType,
    required String projectName,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      inputDetail = pulumi.Input.asOptionalInput<String>(inputDetail),
      inputType = pulumi.Input.asOptionalInput<String>(inputType),
      lastModifyTime = pulumi.Input.asOptionalInput<int>(lastModifyTime),
      logSample = pulumi.Input.asOptionalInput<String>(logSample),
      logtailConfigName = pulumi.Input.asOptionalInput<String>(logtailConfigName),
      outputDetail = pulumi.Input.asOptionalInput<LogtailConfigOutputDetail>(outputDetail),
      outputType = pulumi.Input.asOptionalInput<String>(outputType),
      projectName = pulumi.Input.asInput<String>(projectName);

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
      createTime: map['createTime'] == null ? null : map['createTime'] as String,
      inputDetail: map['inputDetail'] == null ? null : map['inputDetail'] as String,
      inputType: map['inputType'] == null ? null : map['inputType'] as String,
      lastModifyTime: map['lastModifyTime'] == null ? null : map['lastModifyTime'] as int,
      logSample: map['logSample'] == null ? null : map['logSample'] as String,
      logtailConfigName: map['logtailConfigName'] == null ? null : map['logtailConfigName'] as String,
      outputDetail: map['outputDetail'] == null ? null : LogtailConfigOutputDetail.fromMap((map['outputDetail'] as Map).cast<String, dynamic>()),
      outputType: map['outputType'] == null ? null : map['outputType'] as String,
      projectName: map['projectName'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../task_excludes/task_excludes.dart';
import '../task_includes/task_includes.dart';
import '../task_options/task_options.dart';
import '../task_schedule/task_schedule.dart';
import '../task_task_report_config/task_task_report_config.dart';

/// The set of arguments for Task.
class TaskArgs {
  /// Amazon Resource Name (ARN) of the CloudWatch Log Group that is used to monitor and log events in the sync task.
  final Input<String>? cloudwatchLogGroupArn;

  /// Amazon Resource Name (ARN) of destination DataSync Location.
  final Input<String> destinationLocationArn;

  /// Filter rules that determines which files to exclude from a task.
  final Input<TaskExcludes>? excludes;

  /// Filter rules that determines which files to include in a task.
  final Input<TaskIncludes>? includes;

  /// Name of the DataSync Task.
  final Input<String>? name;

  /// Configuration block containing option that controls the default behavior when you start an execution of this DataSync Task. For each individual task execution, you can override these options by specifying an overriding configuration in those executions.
  final Input<TaskOptions>? options;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies a schedule used to periodically transfer files from a source to a destination location.
  final Input<TaskSchedule>? schedule;

  /// Amazon Resource Name (ARN) of source DataSync Location.
  final Input<String> sourceLocationArn;

  /// Key-value pairs of resource tags to assign to the DataSync Task. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// One of the following task modes for your data transfer:
  /// * `BASIC` (default) - Transfer files or objects between Amazon Web Services storage and on-premises, edge, or other cloud storage.
  /// * `ENHANCED` - Transfer virtually unlimited numbers of objects with enhanced metrics, more detailed logs, and higher performance than Basic mode. Currently available for transfers between Amazon S3 locations.
  final Input<String>? taskMode;

  /// Configuration block containing the configuration of a DataSync Task Report. See <span pulumi-lang-nodejs="`taskReportConfig`" pulumi-lang-dotnet="`TaskReportConfig`" pulumi-lang-go="`taskReportConfig`" pulumi-lang-python="`task_report_config`" pulumi-lang-yaml="`taskReportConfig`" pulumi-lang-java="`taskReportConfig`">`task_report_config`</span> below.
  final Input<TaskTaskReportConfig>? taskReportConfig;

  TaskArgs({
    this.cloudwatchLogGroupArn,
    required this.destinationLocationArn,
    this.excludes,
    this.includes,
    this.name,
    this.options,
    this.region,
    this.schedule,
    required this.sourceLocationArn,
    this.tags,
    this.taskMode,
    this.taskReportConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchLogGroupArnValue = cloudwatchLogGroupArn;
    if (cloudwatchLogGroupArnValue != null) {
      map['cloudwatchLogGroupArn'] = cloudwatchLogGroupArnValue;
    }
    map['destinationLocationArn'] = destinationLocationArn;
    final excludesValue = excludes;
    if (excludesValue != null) {
      map['excludes'] =
          Input.mapOptionalInputValue<TaskExcludes, Map<String, dynamic>>(
              excludesValue, (value) => value.toMap());
    }
    final includesValue = includes;
    if (includesValue != null) {
      map['includes'] =
          Input.mapOptionalInputValue<TaskIncludes, Map<String, dynamic>>(
              includesValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] =
          Input.mapOptionalInputValue<TaskOptions, Map<String, dynamic>>(
              optionsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] =
          Input.mapOptionalInputValue<TaskSchedule, Map<String, dynamic>>(
              scheduleValue, (value) => value.toMap());
    }
    map['sourceLocationArn'] = sourceLocationArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final taskModeValue = taskMode;
    if (taskModeValue != null) {
      map['taskMode'] = taskModeValue;
    }
    final taskReportConfigValue = taskReportConfig;
    if (taskReportConfigValue != null) {
      map['taskReportConfig'] = Input.mapOptionalInputValue<
              TaskTaskReportConfig, Map<String, dynamic>>(
          taskReportConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      cloudwatchLogGroupArn:
          Input.asOptionalInput<String>(map['cloudwatchLogGroupArn']),
      destinationLocationArn:
          Input.asInput<String>(map['destinationLocationArn']),
      excludes: Input.asOptionalInput<TaskExcludes>(map['excludes']),
      includes: Input.asOptionalInput<TaskIncludes>(map['includes']),
      name: Input.asOptionalInput<String>(map['name']),
      options: Input.asOptionalInput<TaskOptions>(map['options']),
      region: Input.asOptionalInput<String>(map['region']),
      schedule: Input.asOptionalInput<TaskSchedule>(map['schedule']),
      sourceLocationArn: Input.asInput<String>(map['sourceLocationArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      taskMode: Input.asOptionalInput<String>(map['taskMode']),
      taskReportConfig:
          Input.asOptionalInput<TaskTaskReportConfig>(map['taskReportConfig']),
    );
  }
}

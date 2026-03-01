// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_excludes.dart';
import 'task_includes.dart';
import 'task_options.dart';
import 'task_schedule.dart';
import 'task_task_report_config.dart';

/// {@template pulumi_datasync_task_task_args_doc}
/// The set of arguments for Task.
/// {@endtemplate}
/// {@macro pulumi_datasync_task_task_args_doc}
class TaskArgs {
  /// Amazon Resource Name (ARN) of the CloudWatch Log Group that is used to monitor and log events in the sync task.
  final pulumi.Input<String>? cloudwatchLogGroupArn;
  /// Amazon Resource Name (ARN) of destination DataSync Location.
  final pulumi.Input<String> destinationLocationArn;
  /// Filter rules that determines which files to exclude from a task.
  final pulumi.Input<TaskExcludes>? excludes;
  /// Filter rules that determines which files to include in a task.
  final pulumi.Input<TaskIncludes>? includes;
  /// Name of the DataSync Task.
  final pulumi.Input<String>? name;
  /// Configuration block containing option that controls the default behavior when you start an execution of this DataSync Task. For each individual task execution, you can override these options by specifying an overriding configuration in those executions.
  final pulumi.Input<TaskOptions>? options;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies a schedule used to periodically transfer files from a source to a destination location.
  final pulumi.Input<TaskSchedule>? schedule;
  /// Amazon Resource Name (ARN) of source DataSync Location.
  final pulumi.Input<String> sourceLocationArn;
  /// Key-value pairs of resource tags to assign to the DataSync Task. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// One of the following task modes for your data transfer:
  /// * `BASIC` (default) - Transfer files or objects between Amazon Web Services storage and on-premises, edge, or other cloud storage.
  /// * `ENHANCED` - Transfer virtually unlimited numbers of objects with enhanced metrics, more detailed logs, and higher performance than Basic mode. Currently available for transfers between Amazon S3 locations.
  final pulumi.Input<String>? taskMode;
  /// Configuration block containing the configuration of a DataSync Task Report. See `task_report_config` below.
  final pulumi.Input<TaskTaskReportConfig>? taskReportConfig;

  /// Creates a new [TaskArgs].
  /// [cloudwatchLogGroupArn] Amazon Resource Name (ARN) of the CloudWatch Log Group that is used to monitor and log events in the sync task.
  /// [destinationLocationArn] Amazon Resource Name (ARN) of destination DataSync Location.
  /// [excludes] Filter rules that determines which files to exclude from a task.
  /// [includes] Filter rules that determines which files to include in a task.
  /// [name] Name of the DataSync Task.
  /// [options] Configuration block containing option that controls the default behavior when you start an execution of this DataSync Task. For each individual task execution, you can override these options by specifying an overriding configuration in those executions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedule] Specifies a schedule used to periodically transfer files from a source to a destination location.
  /// [sourceLocationArn] Amazon Resource Name (ARN) of source DataSync Location.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Task. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [taskMode] One of the following task modes for your data transfer:
  /// [taskReportConfig] Configuration block containing the configuration of a DataSync Task Report. See `task_report_config` below.
  TaskArgs({
    String? cloudwatchLogGroupArn,
    required String destinationLocationArn,
    TaskExcludes? excludes,
    TaskIncludes? includes,
    String? name,
    TaskOptions? options,
    String? region,
    TaskSchedule? schedule,
    required String sourceLocationArn,
    Map<String, String>? tags,
    String? taskMode,
    TaskTaskReportConfig? taskReportConfig,
  }) :
      cloudwatchLogGroupArn = pulumi.Input.asOptionalInput<String>(cloudwatchLogGroupArn),
      destinationLocationArn = pulumi.Input.asInput<String>(destinationLocationArn),
      excludes = pulumi.Input.asOptionalInput<TaskExcludes>(excludes),
      includes = pulumi.Input.asOptionalInput<TaskIncludes>(includes),
      name = pulumi.Input.asOptionalInput<String>(name),
      options = pulumi.Input.asOptionalInput<TaskOptions>(options),
      region = pulumi.Input.asOptionalInput<String>(region),
      schedule = pulumi.Input.asOptionalInput<TaskSchedule>(schedule),
      sourceLocationArn = pulumi.Input.asInput<String>(sourceLocationArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      taskMode = pulumi.Input.asOptionalInput<String>(taskMode),
      taskReportConfig = pulumi.Input.asOptionalInput<TaskTaskReportConfig>(taskReportConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogGroupArn': ?cloudwatchLogGroupArn,
      'destinationLocationArn': destinationLocationArn,
      'excludes': ?pulumi.Input.mapOptionalInputValue<TaskExcludes, Map<String, dynamic>>(excludes, (value) => value.toMap()),
      'includes': ?pulumi.Input.mapOptionalInputValue<TaskIncludes, Map<String, dynamic>>(includes, (value) => value.toMap()),
      'name': ?name,
      'options': ?pulumi.Input.mapOptionalInputValue<TaskOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'region': ?region,
      'schedule': ?pulumi.Input.mapOptionalInputValue<TaskSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'sourceLocationArn': sourceLocationArn,
      'tags': ?tags,
      'taskMode': ?taskMode,
      'taskReportConfig': ?pulumi.Input.mapOptionalInputValue<TaskTaskReportConfig, Map<String, dynamic>>(taskReportConfig, (value) => value.toMap()),
    };
  }

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      cloudwatchLogGroupArn: map['cloudwatchLogGroupArn'] == null ? null : map['cloudwatchLogGroupArn'] as String,
      destinationLocationArn: map['destinationLocationArn'] as String,
      excludes: map['excludes'] == null ? null : TaskExcludes.fromMap((map['excludes'] as Map).cast<String, dynamic>()),
      includes: map['includes'] == null ? null : TaskIncludes.fromMap((map['includes'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      options: map['options'] == null ? null : TaskOptions.fromMap((map['options'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      schedule: map['schedule'] == null ? null : TaskSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      sourceLocationArn: map['sourceLocationArn'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      taskMode: map['taskMode'] == null ? null : map['taskMode'] as String,
      taskReportConfig: map['taskReportConfig'] == null ? null : TaskTaskReportConfig.fromMap((map['taskReportConfig'] as Map).cast<String, dynamic>()),
    );
  }
}


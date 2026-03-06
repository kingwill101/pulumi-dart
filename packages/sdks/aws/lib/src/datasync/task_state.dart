// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_excludes.dart';
import 'task_includes.dart';
import 'task_options.dart';
import 'task_schedule.dart';
import 'task_task_report_config.dart';

/// Input properties used for looking up and filtering Task resources.
class TaskState {
  /// Amazon Resource Name (ARN) of the DataSync Task.
  final pulumi.Input<String>? arn;
  /// Amazon Resource Name (ARN) of the CloudWatch Log Group that is used to monitor and log events in the sync task.
  final pulumi.Input<String>? cloudwatchLogGroupArn;
  /// Amazon Resource Name (ARN) of destination DataSync Location.
  final pulumi.Input<String>? destinationLocationArn;
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
  final pulumi.Input<String>? sourceLocationArn;
  /// Key-value pairs of resource tags to assign to the DataSync Task. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// One of the following task modes for your data transfer:
  /// * `BASIC` (default) - Transfer files or objects between Amazon Web Services storage and on-premises, edge, or other cloud storage.
  /// * `ENHANCED` - Transfer virtually unlimited numbers of objects with enhanced metrics, more detailed logs, and higher performance than Basic mode. Currently available for transfers between Amazon S3 locations.
  final pulumi.Input<String>? taskMode;
  /// Configuration block containing the configuration of a DataSync Task Report. See `task_report_config` below.
  final pulumi.Input<TaskTaskReportConfig>? taskReportConfig;

  /// Creates a new [TaskState].
  /// [arn] Amazon Resource Name (ARN) of the DataSync Task.
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
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [taskMode] One of the following task modes for your data transfer:
  /// [taskReportConfig] Configuration block containing the configuration of a DataSync Task Report. See `task_report_config` below.
  const TaskState({
    this.arn,
    this.cloudwatchLogGroupArn,
    this.destinationLocationArn,
    this.excludes,
    this.includes,
    this.name,
    this.options,
    this.region,
    this.schedule,
    this.sourceLocationArn,
    this.tags,
    this.tagsAll,
    this.taskMode,
    this.taskReportConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cloudwatchLogGroupArn': ?cloudwatchLogGroupArn,
      'destinationLocationArn': ?destinationLocationArn,
      'excludes': ?pulumi.Input.mapOptionalInputValue<TaskExcludes, Map<String, dynamic>>(excludes, (value) => value.toMap()),
      'includes': ?pulumi.Input.mapOptionalInputValue<TaskIncludes, Map<String, dynamic>>(includes, (value) => value.toMap()),
      'name': ?name,
      'options': ?pulumi.Input.mapOptionalInputValue<TaskOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'region': ?region,
      'schedule': ?pulumi.Input.mapOptionalInputValue<TaskSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'sourceLocationArn': ?sourceLocationArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'taskMode': ?taskMode,
      'taskReportConfig': ?pulumi.Input.mapOptionalInputValue<TaskTaskReportConfig, Map<String, dynamic>>(taskReportConfig, (value) => value.toMap()),
    };
  }

  factory TaskState.fromMap(Map<String, dynamic> map) {
    return TaskState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudwatchLogGroupArn: (() { final guardedValue = map['cloudwatchLogGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationLocationArn: (() { final guardedValue = map['destinationLocationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskExcludes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskIncludes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceLocationArn: (() { final guardedValue = map['sourceLocationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taskMode: (() { final guardedValue = map['taskMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskReportConfig: (() { final guardedValue = map['taskReportConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskTaskReportConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


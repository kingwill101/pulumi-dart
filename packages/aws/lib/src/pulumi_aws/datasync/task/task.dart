import 'package:pulumi/pulumi.dart' as pulumi;
import '../task_excludes/task_excludes.dart';
import '../task_includes/task_includes.dart';
import '../task_options/task_options.dart';
import '../task_schedule/task_schedule.dart';
import '../task_task_report_config/task_task_report_config.dart';
import 'task_args.dart';

/// Manages an AWS DataSync Task, which represents a configuration for synchronization. Starting an execution of these DataSync Tasks (actually synchronizing files) is performed outside of this resource.
///
/// ## Example Usage
///
///
///
///
/// ### With Scheduling
///
///
///
///
/// ### With Filtering
///
///
///
///
/// ### With Enhanced Task Mode
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync task.
///
///
/// Using `pulumi import`, import `aws.datasync.Task` using the DataSync Task Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/task:Task example arn:aws:datasync:us-east-1:123456789012:task/task-12345678901234567
/// ```
class Task extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the DataSync Task.
  late final pulumi.Output<String> arn;

  /// Amazon Resource Name (ARN) of the CloudWatch Log Group that is used to monitor and log events in the sync task.
  late final pulumi.Output<String?> cloudwatchLogGroupArn;

  /// Amazon Resource Name (ARN) of destination DataSync Location.
  late final pulumi.Output<String> destinationLocationArn;

  /// Filter rules that determines which files to exclude from a task.
  late final pulumi.Output<TaskExcludes?> excludes;

  /// Filter rules that determines which files to include in a task.
  late final pulumi.Output<TaskIncludes?> includes;

  /// Name of the DataSync Task.
  late final pulumi.Output<String> name;

  /// Configuration block containing option that controls the default behavior when you start an execution of this DataSync Task. For each individual task execution, you can override these options by specifying an overriding configuration in those executions.
  late final pulumi.Output<TaskOptions?> options;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies a schedule used to periodically transfer files from a source to a destination location.
  late final pulumi.Output<TaskSchedule?> schedule;

  /// Amazon Resource Name (ARN) of source DataSync Location.
  late final pulumi.Output<String> sourceLocationArn;

  /// Key-value pairs of resource tags to assign to the DataSync Task. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// One of the following task modes for your data transfer:
  /// * `BASIC` (default) - Transfer files or objects between Amazon Web Services storage and on-premises, edge, or other cloud storage.
  /// * `ENHANCED` - Transfer virtually unlimited numbers of objects with enhanced metrics, more detailed logs, and higher performance than Basic mode. Currently available for transfers between Amazon S3 locations.
  late final pulumi.Output<String> taskMode;

  /// Configuration block containing the configuration of a DataSync Task Report. See `task_report_config` below.
  late final pulumi.Output<TaskTaskReportConfig?> taskReportConfig;

  Task(
    String name, {
    TaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/task:Task',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cloudwatchLogGroupArn =
        registerOutput<String?>('cloudwatchLogGroupArn');
    this.destinationLocationArn =
        registerOutput<String>('destinationLocationArn');
    this.excludes = registerOutput<TaskExcludes?>('excludes');
    this.includes = registerOutput<TaskIncludes?>('includes');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<TaskOptions?>('options');
    this.region = registerOutput<String>('region');
    this.schedule = registerOutput<TaskSchedule?>('schedule');
    this.sourceLocationArn = registerOutput<String>('sourceLocationArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.taskMode = registerOutput<String>('taskMode');
    this.taskReportConfig =
        registerOutput<TaskTaskReportConfig?>('taskReportConfig');
  }
}
